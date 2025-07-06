# /quest_editor/main_window.py
# -*- coding: utf-8 -*-

import os
from slpp import slpp as lua
from PyQt5.QtWidgets import (
    QMainWindow, QWidget, QVBoxLayout, QHBoxLayout, QSplitter, QTreeView,
    QLabel, QPushButton, QMessageBox, QFileDialog, QScrollArea, QAction, QDialog,
    QInputDialog, QListWidget, QListWidgetItem, QDialogButtonBox
)
from PyQt5.QtCore import Qt
from PyQt5.QtGui import QStandardItemModel, QStandardItem

from lua_helper import LuaHelper
from ui_components import ItemEditorWidget
from quest_wizard import QuestWizardDialog
from database import Database

class QuestEditor(QMainWindow):
    """Hlavní okno aplikace Quest Config Editor."""
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Quest Config Editor v2.0 (DB-Powered)")
        self.setGeometry(100, 100, 1400, 900)
        self.config_data = {}
        self.current_config_id = None
        self.current_config_name = ""
        self.presets = {}
        
        try:
            self.db = Database()
            if not self.db.connection:
                QMessageBox.critical(self, "Chyba Databáze", "Nepodařilo se připojit k MySQL databázi.\nZkontrolujte db_config.ini a funkčnost DB.")
                self.db = None
        except Exception as e:
            QMessageBox.critical(self, "Chyba Konfigurace", f"Chyba při načítání konfigurace databáze:\n{e}")
            self.db = None

        self.init_ui()

    def init_ui(self):
        self._create_menu()
        self.statusBar().showMessage("Připraven. Načtěte konfiguraci z databáze nebo importujte LUA soubor.")

        main_widget = QWidget()
        self.setCentralWidget(main_widget)
        main_layout = QHBoxLayout(main_widget)
        splitter = QSplitter(Qt.Horizontal)
        main_layout.addWidget(splitter)

        left_panel = QWidget()
        left_layout = QVBoxLayout(left_panel)
        self.tree_view = QTreeView()
        self.tree_view.setHeaderHidden(True)
        self.tree_model = QStandardItemModel()
        self.tree_view.setModel(self.tree_model)
        self.tree_view.selectionModel().selectionChanged.connect(self.on_tree_item_selected)
        left_layout.addWidget(self.tree_view)

        tree_buttons_layout = QHBoxLayout()
        add_npc_btn = QPushButton("Přidat NPC")
        add_npc_btn.clicked.connect(self.add_npc)
        add_quest_btn = QPushButton("Přidat Quest")
        add_quest_btn.clicked.connect(self.add_quest_to_selected_npc)
        remove_btn = QPushButton("Odebrat vybrané")
        remove_btn.clicked.connect(self.remove_selected)
        tree_buttons_layout.addWidget(add_npc_btn)
        tree_buttons_layout.addWidget(add_quest_btn)
        tree_buttons_layout.addWidget(remove_btn)
        left_layout.addLayout(tree_buttons_layout)
        splitter.addWidget(left_panel)

        self.scroll_area = QScrollArea()
        self.scroll_area.setWidgetResizable(True)
        self.show_placeholder()
        splitter.addWidget(self.scroll_area)
        splitter.setSizes([350, 1050])

    def show_placeholder(self):
        placeholder = QLabel("<- Vyberte položku ze stromu pro editaci\n\nNačtěte konfiguraci přes menu 'Databáze' -> 'Načíst...'")
        placeholder.setAlignment(Qt.AlignCenter)
        self.scroll_area.setWidget(placeholder)

    def _create_menu(self):
        menubar = self.menuBar()

        db_menu = menubar.addMenu("&Databáze")
        db_actions = [
            ("Načíst konfiguraci...", self.load_from_db, "Ctrl+O"),
            ("Uložit aktuální konfiguraci", self.save_to_db, "Ctrl+S"),
            ("Uložit jako novou konfiguraci...", self.save_as_new_in_db, "Ctrl+Shift+S"),
        ]
        for name, func, shortcut in db_actions:
            action = QAction(name, self)
            if func: action.triggered.connect(func)
            if shortcut: action.setShortcut(shortcut)
            db_menu.addAction(action)

        file_menu = menubar.addMenu("&Soubor (Import/Export)")
        file_actions = [
            ("Importovat z LUA souboru...", self.import_from_lua, None),
            ("Exportovat do LUA souboru...", self.export_to_lua, None),
            (None, None, None),
            ("&Konec", self.close, "Ctrl+Q")
        ]
        for name, func, shortcut in file_actions:
            if name is None: file_menu.addSeparator(); continue
            action = QAction(name, self)
            if func: action.triggered.connect(func)
            if shortcut: action.setShortcut(shortcut)
            file_menu.addAction(action)
    
    def _update_window_title(self):
        title = "Quest Config Editor v2.0 (DB-Powered)"
        if self.current_config_name:
            title += f" - [{self.current_config_name}]"
        self.setWindowTitle(title)
        
    def load_from_db(self):
        if not self.db:
            QMessageBox.critical(self, "Chyba", "Databázové připojení není k dispozici.")
            return
        configs = self.db.get_config_list()
        if not configs:
            QMessageBox.information(self, "Žádné konfigurace", "V databázi nebyly nalezeny žádné uložené konfigurace.")
            return

        dialog = QDialog(self)
        dialog.setWindowTitle("Vyberte konfiguraci k načtení")
        layout = QVBoxLayout(dialog)
        list_widget = QListWidget()
        for config in configs:
            item = QListWidgetItem(f"{config['name']} (ID: {config['id']}, Upraveno: {config['last_updated']})")
            item.setData(Qt.UserRole, config)
            list_widget.addItem(item)
        layout.addWidget(list_widget)
        buttons = QDialogButtonBox(QDialogButtonBox.Ok | QDialogButtonBox.Cancel)
        buttons.accepted.connect(dialog.accept)
        buttons.rejected.connect(dialog.reject)
        layout.addWidget(buttons)

        if dialog.exec_() == QDialog.Accepted and list_widget.currentItem():
            selected_config = list_widget.currentItem().data(Qt.UserRole)
            self.config_data = self.db.load_config(selected_config['id'])
            if self.config_data is not None:
                self.current_config_id = selected_config['id']
                self.current_config_name = selected_config['name']
                self.extract_presets()
                self.populate_tree()
                self.statusBar().showMessage(f"Konfigurace '{self.current_config_name}' načtena z DB.", 5000)
                self.tree_view.expandAll()
                self._update_window_title()
            else:
                QMessageBox.critical(self, "Chyba", "Nepodařilo se načíst data z databáze.")

    def save_to_db(self):
        if self.current_config_id is None:
            self.save_as_new_in_db()
            return
        
        if self.db and self.db.save_config(self.current_config_id, self.config_data):
            self.statusBar().showMessage(f"Konfigurace '{self.current_config_name}' úspěšně uložena do DB.", 5000)
        else:
            QMessageBox.critical(self, "Chyba ukládání", "Nepodařilo se uložit konfiguraci do DB.")

    def save_as_new_in_db(self):
        if not self.db:
            QMessageBox.critical(self, "Chyba", "Databázové připojení není k dispozici.")
            return
        if not self.config_data:
             QMessageBox.warning(self, "Chyba", "Není co ukládat. Načtěte nebo naimportujte data.")
             return

        name, ok = QInputDialog.getText(self, "Nová konfigurace", "Zadejte název pro novou konfiguraci:")
        if ok and name:
            new_id = self.db.create_new_config(name, self.config_data)
            if new_id:
                self.current_config_id = new_id
                self.current_config_name = name
                self.statusBar().showMessage(f"Konfigurace '{name}' úspěšně vytvořena v DB.", 5000)
                self._update_window_title()
            else:
                QMessageBox.critical(self, "Chyba ukládání", f"Konfigurace s názvem '{name}' již pravděpodobně existuje nebo nastala jiná chyba DB.")

    def import_from_lua(self):
        path, _ = QFileDialog.getOpenFileName(self, "Importovat LUA soubor", "", "LUA Files (*.lua)")
        if not path: return
        try:
            with open(path, 'r', encoding='utf-8') as f: content = f.read()
            lua_data_str = content[content.find("Config.Quests = {"):] if "Config.Quests = {" in content else content
            lua_data_str = lua_data_str.replace("Config.Quests = ", "", 1).strip()

            cleaned_lua = LuaHelper.clean_lua_for_parsing(lua_data_str)
            self.config_data = lua.decode(cleaned_lua)
            
            self.statusBar().showMessage(f"Soubor {os.path.basename(path)} naimportován. Uložte jej jako novou konfiguraci do DB.", 10000)
            self.current_config_id = None
            self.current_config_name = f"Importováno z {os.path.basename(path)}"
            
            self.extract_presets()
            self.populate_tree()
            self.tree_view.expandAll()
            self._update_window_title()

            self.save_as_new_in_db()

        except Exception as e:
            QMessageBox.critical(self, "Chyba při importu", f"Nepodařilo se zpracovat LUA soubor:\n{e}")
            self.config_data = {}
            self.populate_tree()

    def export_to_lua(self):
        if not self.config_data:
            QMessageBox.warning(self, "Varování", "Není co exportovat. Načtěte nejprve konfiguraci.")
            return
            
        default_filename = f"{self.current_config_name.replace(' ', '_')}.lua" if self.current_config_name else "quests_export.lua"
        path, _ = QFileDialog.getSaveFileName(self, "Exportovat do LUA souboru", default_filename, "LUA Files (*.lua)")
        if not path: return

        try:
            lua_output = "Config.Quests = " + LuaHelper.format_value_to_lua(self.config_data)
            with open(path, 'w', encoding='utf-8') as f:
                f.write(lua_output)
            self.statusBar().showMessage(f"Konfigurace úspěšně exportována do: {path}", 5000)
        except Exception as e:
            QMessageBox.critical(self, "Chyba při exportu", f"Nepodařilo se uložit soubor.\n{e}")

    def extract_presets(self):
        self.presets = {'ped_models': set(), 'weapons': set(), 'combat_styles': set(['offensive', 'defensive', 'passive']),
                        'blip_styles': set(), 'blip_sprites': set(), 'blip_colors': set(), 'animal_brawl': set()}
        def recursive_extract(d):
            if isinstance(d, dict):
                for k, v in d.items():
                    if isinstance(v, str):
                        if k == 'model': self.presets['ped_models'].add(v)
                        elif k == 'weapon': self.presets['weapons'].add(v)
                        elif k == 'combat': self.presets['combat_styles'].add(v)
                        elif k == 'style': self.presets['blip_styles'].add(v)
                        elif k == 'sprite': self.presets['blip_sprites'].add(v)
                        elif k == 'animal_brawl': self.presets['animal_brawl'].add(v)
                    if isinstance(v, (int, float)) and k == 'color': self.presets['blip_colors'].add(v)
                    recursive_extract(v)
            elif isinstance(d, list): [recursive_extract(i) for i in d]
        recursive_extract(self.config_data)

    def populate_tree(self):
        self.tree_model.clear()
        root = self.tree_model.invisibleRootItem()
        if not self.config_data: return
        for npc_id in sorted(self.config_data.keys()):
            npc_data = self.config_data[npc_id]
            npc_item = QStandardItem(f"NPC [{npc_id}]: {npc_data.get('name', 'Beze jména')}")
            npc_item.setData({'type': 'npc', 'id': npc_id}, Qt.UserRole)
            root.appendRow(npc_item)
            quests = npc_data.get('quests')
            if isinstance(quests, dict):
                for quest_id in sorted(quests.keys()):
                    quest_data = quests[quest_id]
                    quest_item = QStandardItem(f"  Quest [{quest_id}]: {quest_data.get('name', 'Beze jména')}")
                    quest_item.setData({'type': 'quest', 'npc_id': npc_id, 'id': quest_id}, Qt.UserRole)
                    npc_item.appendRow(quest_item)

    def on_tree_item_selected(self, selected, deselected):
        indexes = selected.indexes()
        if not indexes:
            self.show_placeholder()
            return
        
        item = self.tree_model.itemFromIndex(indexes[0])
        if not item or not item.data(Qt.UserRole):
            self.show_placeholder()
            return
        
        item_data = item.data(Qt.UserRole)
        data_dict = None
        item_type = item_data.get('type')
        
        if item_type == 'npc':
            data_dict = self.config_data.get(item_data['id'])
        elif item_type == 'quest':
            data_dict = self.config_data.get(item_data['npc_id'], {}).get('quests', {}).get(item_data['id'])
        
        if data_dict is not None:
            editor = ItemEditorWidget(item_type, data_dict, self.presets)
            editor.data_changed.connect(self.refresh_tree_and_title)
            self.scroll_area.setWidget(editor)
        else:
            self.show_placeholder()


    def refresh_tree_and_title(self):
        selected_index = self.tree_view.currentIndex()
        if not selected_index.isValid(): return
        
        item = self.tree_model.itemFromIndex(selected_index)
        if not item or not item.data(Qt.UserRole): return
        
        item_data = item.data(Qt.UserRole)
        
        if item_data['type'] == 'npc':
            data = self.config_data.get(item_data['id'])
            if data: item.setText(f"NPC [{item_data['id']}]: {data.get('name', 'Beze jména')}")
        elif item_data['type'] == 'quest':
            data = self.config_data.get(item_data['npc_id'], {}).get('quests', {}).get(item_data['id'])
            if data: item.setText(f"  Quest [{item_data['id']}]: {data.get('name', 'Beze jména')}")

    def add_npc(self):
        if not self.config_data:
             QMessageBox.warning(self, "Chyba", "Nejprve načtěte nebo naimportujte konfiguraci.")
             return
        numeric_keys = [k for k in self.config_data.keys() if isinstance(k, int)]
        new_id = max(numeric_keys) + 1 if numeric_keys else 1
        self.config_data[new_id] = {
            "name": f"Nové NPC {new_id}", "coords": "vector3(0.0,0.0,0.0)", "heading": 0.0,
            "job": None, "ped": {"model": 'GHK(cs_nbxexecuted)', "preset": 0, "anim": ["anim1", "anim2"], "scenario": ""},
            "blip": {"enable": True, "sprite": -2034972265, "color": 0, "scale": 1.0, "text": f"Nové NPC {new_id}"},
            "other_quest_requirement": False, "reset_progress": {"enable": False, "price": 500},
            "shop": {"completed_quest_requirement": 0, "items": []}, "quests": {}, "random_coords": []
        }
        self.populate_tree()
        self.tree_view.expandAll()

    def add_quest_to_selected_npc(self):
        indexes = self.tree_view.selectedIndexes()
        if not indexes:
            QMessageBox.information(self, "Výběr", "Vyberte NPC ve stromu, ke kterému chcete přidat quest.")
            return

        item = self.tree_model.itemFromIndex(indexes[0])
        data = item.data(Qt.UserRole)
        
        if not data: return
        npc_id_to_add_to = data.get('id') if data['type'] == 'npc' else data.get('npc_id')

        if not npc_id_to_add_to:
            QMessageBox.information(self, "Chyba", "Vyberte platného NPC nebo quest pod ním.")
            return

        dialog = QuestWizardDialog(self.presets, self)
        if dialog.exec_() == QDialog.Accepted:
            quest_data = dialog.get_result()
            npc_quests = self.config_data[npc_id_to_add_to].setdefault("quests", {})
            numeric_keys = [k for k in npc_quests.keys() if isinstance(k, int)]
            new_id = max(numeric_keys, default=0) + 1
            npc_quests[new_id] = quest_data
            self.populate_tree()
            self.tree_view.expandAll()

    def remove_selected(self):
        indexes = self.tree_view.selectedIndexes()
        if not indexes: return
        
        item = self.tree_model.itemFromIndex(indexes[0])
        reply = QMessageBox.question(self, 'Potvrzení smazání', f'Opravdu si přejete smazat "{item.text().strip()}"?', QMessageBox.Yes | QMessageBox.No, QMessageBox.No)
        if reply != QMessageBox.Yes: return
        
        item_data = item.data(Qt.UserRole)
        if item_data['type'] == 'npc':
            del self.config_data[item_data['id']]
        elif item_data['type'] == 'quest':
            del self.config_data[item_data['npc_id']]['quests'][item_data['id']]
            
        self.populate_tree()
        self.show_placeholder()

    def closeEvent(self, event):
        """Při zavírání okna zavřeme i spojení s DB."""
        if self.db:
            self.db.close()
        event.accept()
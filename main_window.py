# /quest_editor/main_window.py
# -*- coding: utf-8 -*-

import os
from slpp import slpp as lua
from PyQt5.QtWidgets import (
    QMainWindow, QWidget, QVBoxLayout, QHBoxLayout, QSplitter, QTreeView,
    QLabel, QPushButton, QMessageBox, QFileDialog, QScrollArea, QAction
)
from PyQt5.QtCore import Qt
from PyQt5.QtGui import QStandardItemModel, QStandardItem

from lua_helper import LuaHelper
from ui_components import ItemEditorWidget

class QuestEditor(QMainWindow):
    """Hlavní okno aplikace Quest Config Editor."""
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Quest Config Editor v1.5 (Modular)")
        self.setGeometry(100, 100, 1400, 900)
        self.config_data = {}
        self.current_file_path = None
        self.presets = {}
        self.init_ui()

    def init_ui(self):
        self._create_menu()
        self.statusBar().showMessage("Připraven. Otevřete LUA soubor.")
        
        main_widget = QWidget(); self.setCentralWidget(main_widget)
        main_layout = QHBoxLayout(main_widget)
        splitter = QSplitter(Qt.Horizontal); main_layout.addWidget(splitter)
        
        # Levý panel (strom)
        left_panel = QWidget(); left_layout = QVBoxLayout(left_panel)
        self.tree_view = QTreeView(); self.tree_view.setHeaderHidden(True)
        self.tree_model = QStandardItemModel()
        self.tree_view.setModel(self.tree_model)
        self.tree_view.selectionModel().selectionChanged.connect(self.on_tree_item_selected)
        left_layout.addWidget(self.tree_view)
        
        tree_buttons_layout = QHBoxLayout()
        add_npc_btn = QPushButton("Přidat NPC"); add_npc_btn.clicked.connect(self.add_npc)
        remove_btn = QPushButton("Odebrat vybrané"); remove_btn.clicked.connect(self.remove_selected)
        tree_buttons_layout.addWidget(add_npc_btn); tree_buttons_layout.addWidget(remove_btn)
        left_layout.addLayout(tree_buttons_layout)
        splitter.addWidget(left_panel)
        
        # Pravý panel (editor)
        self.scroll_area = QScrollArea(); self.scroll_area.setWidgetResizable(True)
        self.placeholder_widget = QLabel("<- Vyberte položku ze stromu pro editaci")
        self.placeholder_widget.setAlignment(Qt.AlignCenter)
        self.scroll_area.setWidget(self.placeholder_widget)
        splitter.addWidget(self.scroll_area)
        splitter.setSizes([350, 1050])

    def _create_menu(self):
        menubar = self.menuBar()
        file_menu = menubar.addMenu("&Soubor")
        actions = [("&Otevřít...", self.open_file, "Ctrl+O"), ("&Uložit", self.save_file, "Ctrl+S"),
                   ("Uložit &jako...", self.save_file_as, "Ctrl+Shift+S"), (None, None, None), ("&Konec", self.close, "Ctrl+Q")]
        for name, func, shortcut in actions:
            if name is None: file_menu.addSeparator(); continue
            action = QAction(name, self)
            if func: action.triggered.connect(func)
            if shortcut: action.setShortcut(shortcut)
            file_menu.addAction(action)

    def open_file(self, path=None):
        if not path:
            path, _ = QFileDialog.getOpenFileName(self, "Otevřít LUA soubor", "", "LUA Files (*.lua)")
        if not path: return
        try:
            with open(path, 'r', encoding='utf-8') as f: content = f.read()
            lua_data_str = content[content.find("Config.Quests = {"):] if "Config.Quests = {" in content else content
            lua_data_str = lua_data_str.replace("Config.Quests = ", "", 1).strip()
            
            cleaned_lua = LuaHelper.clean_lua_for_parsing(lua_data_str)
            self.config_data = lua.decode(cleaned_lua)
            self.current_file_path = path
            
            self.extract_presets()
            self.populate_tree()
            self.statusBar().showMessage(f"Soubor načten: {os.path.basename(path)}", 5000)
            self.tree_view.expandAll()
        except Exception as e:
            QMessageBox.critical(self, "Chyba při načítání", f"Nepodařilo se zpracovat soubor:\n{e}\n\nZkontrolujte syntaxi LUA souboru.")
            self.config_data = {}; self.current_file_path = None; self.populate_tree()

    def save_file(self):
        if not self.current_file_path: self.save_file_as()
        else: self.do_save(self.current_file_path)

    def save_file_as(self):
        path, _ = QFileDialog.getSaveFileName(self, "Uložit LUA soubor jako...", "", "LUA Files (*.lua)")
        if path: self.do_save(path)

    def do_save(self, path):
        if not self.config_data:
            QMessageBox.warning(self, "Varování", "Není co uložit."); return
        try:
            lua_output = "Config.Quests = " + LuaHelper.format_value_to_lua(self.config_data)
            with open(path, 'w', encoding='utf-8') as f: f.write(lua_output)
            self.current_file_path = path
            self.statusBar().showMessage(f"Soubor úspěšně uložen: {path}", 5000)
        except Exception as e:
            QMessageBox.critical(self, "Chyba při ukládání", f"Nepodařilo se uložit soubor:\n{e}")

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
            npc_item.setData({'type': 'npc', 'id': npc_id}, Qt.UserRole); root.appendRow(npc_item)
            quests = npc_data.get('quests')
            if isinstance(quests, dict):
                for quest_id in sorted(quests.keys()):
                    quest_data = quests[quest_id]
                    quest_item = QStandardItem(f"  Quest [{quest_id}]: {quest_data.get('name', 'Beze jména')}")
                    quest_item.setData({'type': 'quest', 'npc_id': npc_id, 'id': quest_id}, Qt.UserRole)
                    npc_item.appendRow(quest_item)

    def on_tree_item_selected(self, selected, deselected):
        indexes = selected.indexes()
        if not indexes: self.scroll_area.setWidget(self.placeholder_widget); return
        item = self.tree_model.itemFromIndex(indexes[0])
        if not item or not item.data(Qt.UserRole): self.scroll_area.setWidget(self.placeholder_widget); return
        item_data = item.data(Qt.UserRole)
        data_dict = None; item_type = item_data.get('type')
        if item_type == 'npc': data_dict = self.config_data[item_data['id']]
        elif item_type == 'quest': data_dict = self.config_data[item_data['npc_id']]['quests'][item_data['id']]
        if data_dict is not None:
            editor = ItemEditorWidget(item_type, data_dict, self.presets)
            editor.data_changed.connect(self.refresh_tree_and_title)
            self.scroll_area.setWidget(editor)

    def refresh_tree_and_title(self):
        selected_index = self.tree_view.currentIndex()
        if not selected_index.isValid(): return
        item = self.tree_model.itemFromIndex(selected_index)
        item_data = item.data(Qt.UserRole)
        if item_data['type'] == 'npc':
            data = self.config_data[item_data['id']]
            item.setText(f"NPC [{item_data['id']}]: {data.get('name', 'Beze jména')}")
        elif item_data['type'] == 'quest':
            data = self.config_data[item_data['npc_id']]['quests'][item_data['id']]
            item.setText(f"  Quest [{item_data['id']}]: {data.get('name', 'Beze jména')}")

    def add_npc(self):
        new_id = max(self.config_data.keys()) + 1 if self.config_data else 1
        self.config_data[new_id] = {"name": f"Nové NPC {new_id}", "coords": "VEC3(0.0, 0.0, 0.0)", "heading": 0.0, "ped": {"model": 'GHK(cs_nbxexecuted)', "preset": 0}, "blip": None, "quests": {}}
        self.populate_tree(); self.tree_view.expandAll()

    def remove_selected(self):
        indexes = self.tree_view.selectedIndexes()
        if not indexes: return
        item = self.tree_model.itemFromIndex(indexes[0])
        reply = QMessageBox.question(self, 'Potvrzení', f'Opravdu smazat "{item.text().strip()}"?', QMessageBox.Yes | QMessageBox.No, QMessageBox.No)
        if reply != QMessageBox.Yes: return
        item_data = item.data(Qt.UserRole)
        if item_data['type'] == 'npc': del self.config_data[item_data['id']]
        elif item_data['type'] == 'quest': del self.config_data[item_data['npc_id']]['quests'][item_data['id']]
        self.populate_tree(); self.scroll_area.setWidget(self.placeholder_widget)
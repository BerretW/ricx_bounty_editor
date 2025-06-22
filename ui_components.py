# /quest_editor/ui_components.py
# -*- coding: utf-8 -*-

import re
from PyQt5.QtWidgets import (
    QWidget, QVBoxLayout, QHBoxLayout, QFormLayout, QLineEdit, QLabel, QPushButton,
    QComboBox, QCheckBox, QDoubleSpinBox, QListWidget, QListWidgetItem, QDialog,
    QDialogButtonBox, QGroupBox, QTextEdit, QInputDialog
)
from PyQt5.QtCore import Qt, pyqtSignal
from PyQt5.QtGui import QIntValidator
from lua_helper import LuaHelper

class ItemEditorWidget(QWidget):
    """Univerzální widget pro editaci položek (NPC, Quest, atd.)."""
    data_changed = pyqtSignal()

    def __init__(self, item_type, data_dict, presets):
        super().__init__()
        self.item_type = item_type
        self.data_dict = data_dict
        self.presets = presets
        self.main_layout = QVBoxLayout(self)
        self.main_layout.setContentsMargins(10, 10, 10, 10); self.main_layout.setSpacing(15)
        self.build_form()

    def build_form(self):
        while self.main_layout.count():
            child = self.main_layout.takeAt(0)
            if child.widget(): child.widget().deleteLater()
        
        self.schemas = {
            'npc': {"groups": [("Základní", ['name', 'coords', 'heading', 'job']),("Vzhled (Ped)", ['ped']),("Blip na mapě", ['blip']),("Obchod", ['shop']),("Další nastavení", ['other_quest_requirement', 'reset_progress']),("Seznam Questů", ['quests']),("Náhodné pozice", ['random_coords'])]},
            'quest': {"groups": [("Základní", ['name', 'desc', 'start_pos', 'spawn_distance']),("Cíl (Target)", ['target']),("Odměny", ['reward']),("Stráže", ['guards'])]},
            'shop': {"groups": [("Nastavení obchodu", ['completed_quest_requirement']),("Položky v obchodě", ['items'])]},
            'ped': {"keys": ['model', 'preset', 'anim', 'scenario']},
            'blip': {"keys": ['enable', 'sprite', 'color', 'scale', 'text']},
            'target': {"keys": ['name', 'model', 'preset', 'pos', 'heading', 'weapon', 'combat', 'health', 'blip', 'extra_reward', 'areablip', 'img']},
            'guard': {"keys": ['name', 'ped', 'weapon', 'combat', 'pos', 'heading', 'health', 'blip', 'animal_brawl']},
            'reward_item': {"keys": ['id', 'amount']},
            # --- ZAČÁTEK OPRAVY ---
            'shop_item': {"keys": ['id', 'price']}, # Nový typ pro položku v obchodě
            # --- KONEC OPRAVY ---
            'extra_reward': {"keys": ['killer_weapon', 'reward']},
        }

        self.dict_keys = ['ped', 'blip', 'reset_progress', 'shop', 'target', 'extra_reward', 'areablip']
        self.list_keys = ['random_coords', 'job', 'quests', 'reward', 'guards', 'items', 'anim']

        if not isinstance(self.data_dict, dict): return

        schema = self.schemas.get(self.item_type)
        if schema and "groups" in schema:
            for group_title, keys in schema["groups"]:
                group = QGroupBox(group_title)
                layout = QFormLayout()
                group.setLayout(layout)
                is_empty = True
                for key in keys:
                    if self._add_widget_for_key(layout, self.data_dict, key): is_empty = False
                if not is_empty: self.main_layout.addWidget(group)
        else:
            group = QGroupBox(self.item_type.replace("_", " ").capitalize())
            layout = QFormLayout()
            group.setLayout(layout)
            keys_for_type = schema.get("keys", sorted(self.data_dict.keys())) if schema else sorted(self.data_dict.keys())
            for key in keys_for_type: self._add_widget_for_key(layout, self.data_dict, key)
            self.main_layout.addWidget(group)
        
        self.main_layout.addStretch()

    def _add_widget_for_key(self, layout, parent_data, key):
        if key not in parent_data:
            add_btn = QPushButton(f"Přidat '{key}'"); add_btn.setStyleSheet("text-align: left; padding: 4px; border: 1px dashed gray; color: gray;")
            add_btn.clicked.connect(lambda _, k=key: self._add_missing_field(k))
            layout.addRow(add_btn); return True

        value = parent_data[key]
        
        if key == 'shop' and isinstance(value, dict):
            shop_editor = ItemEditorWidget('shop', value, self.presets)
            shop_editor.data_changed.connect(self.data_changed.emit)
            layout.addRow(shop_editor)
        elif key == 'blip':
            if isinstance(value, bool):
                widget = self._create_simple_widget(parent_data, key)
                if widget: layout.addRow(QLabel(f"{key}:"), widget)
            elif isinstance(value, dict):
                btn = QPushButton("Upravit..."); btn.clicked.connect(lambda _, d=value, k=key: self._open_sub_editor_dialog(d, 'blip'))
                layout.addRow(QLabel(f"{key}:"), btn)
            else:
                 widget = self._create_simple_widget(parent_data, key)
                 if widget: layout.addRow(QLabel(f"{key}:"), widget)
        elif key in self.list_keys and isinstance(value, (list, dict)):
            layout.addRow(QLabel(f"{key}:"), self._create_list_editor(parent_data, key))
        elif (key in self.dict_keys and key != 'shop') and isinstance(value, dict) and value is not None:
            btn = QPushButton("Upravit..."); btn.clicked.connect(lambda _, d=value, k=key: self._open_sub_editor_dialog(d, key))
            layout.addRow(QLabel(f"{key}:"), btn)
        else:
            widget = self._create_simple_widget(parent_data, key)
            if widget: layout.addRow(QLabel(f"{key}:"), widget)
        return True
    
    def _add_missing_field(self, key):
        if key == 'shop': self.data_dict[key] = {'completed_quest_requirement': 0, 'items': []}
        elif key == 'blip': self.data_dict[key] = {'enable': True}
        elif key in self.dict_keys: self.data_dict[key] = {}
        elif key in self.list_keys: self.data_dict[key] = []
        else: self.data_dict[key] = None
        self.build_form(); self.data_changed.emit()

    def _create_simple_widget(self, parent_data, key):
        value = parent_data.get(key)
        widget = None
        if value is None:
            btn = QPushButton("Vytvořit hodnotu"); btn.clicked.connect(lambda: parent_data.update({key: ""}) or self.build_form())
            return btn
        if key == 'sprite':
            line_edit = QLineEdit(str(value)); line_edit.setValidator(QIntValidator())
            def update_sprite_value(text):
                try: parent_data[key] = int(text)
                except ValueError: parent_data[key] = text if text else 0
                self.data_changed.emit()
            line_edit.textChanged.connect(update_sprite_value)
            return line_edit
        if isinstance(value, bool):
            widget = QCheckBox(); widget.setChecked(value)
            widget.stateChanged.connect(lambda state, d=parent_data, k=key: (d.update({k: state == Qt.Checked}), self.data_changed.emit()))
        elif isinstance(value, (int, float)):
            widget = QDoubleSpinBox(); widget.setRange(-2147483647, 2147483647); widget.setDecimals(6 if isinstance(value, float) else 0)
            widget.setValue(value); widget.setButtonSymbols(QDoubleSpinBox.NoButtons)
            widget.valueChanged.connect(lambda v, d=parent_data, k=key: (d.update({k: v}), self.data_changed.emit()))
        elif isinstance(value, str):
            if value.startswith(('VEC3', 'VEC4')):
                container = QWidget(); h_layout = QHBoxLayout(container); h_layout.setContentsMargins(0,0,0,0)
                line = QLineEdit(value); line.setReadOnly(True)
                btn = QPushButton("..."); btn.setFixedWidth(30)
                btn.clicked.connect(lambda _, d=parent_data, k=key: self._open_vector_editor(d, k))
                h_layout.addWidget(line); h_layout.addWidget(btn); widget = container
            elif key == 'desc' or len(value) > 60:
                widget = QTextEdit(value); widget.setAcceptRichText(False); widget.setFixedHeight(80)
                widget.textChanged.connect(lambda w=widget, d=parent_data, k=key: (d.update({k: w.toPlainText()}), self.data_changed.emit()))
            else:
                preset_key_map = {'model': 'ped_models', 'weapon': 'weapons', 'combat': 'combat_styles', 'style': 'blip_styles', 'color': 'blip_colors', 'animal_brawl': 'animal_brawl'}
                preset_key = preset_key_map.get(key)
                if preset_key:
                    combo = QComboBox(); combo.setEditable(True)
                    items = sorted([str(LuaHelper.get_clean_preset_name(i)) for i in self.presets.get(preset_key, [])])
                    combo.addItems(items)
                    current_clean_val = LuaHelper.get_clean_preset_name(value)
                    combo.setCurrentText(str(current_clean_val))
                    def on_text_changed(text, d, k):
                        final_val = text
                        if k in ['model', 'weapon', 'style', 'animal_brawl']: final_val = f"GHK({text})" if not text.startswith('GHK(') else text
                        d.update({k: final_val}); self.data_changed.emit()
                    combo.currentTextChanged.connect(lambda t, d=parent_data, k=key: on_text_changed(t, d, k))
                    widget = combo
                else:
                    line = QLineEdit(value); line.textChanged.connect(lambda t, d=parent_data, k=key: (d.update({k: t}), self.data_changed.emit()))
                    widget = line
        return widget

    def _create_list_editor(self, parent_data, key):
        container = QWidget(); layout = QVBoxLayout(container); layout.setContentsMargins(0,0,0,0)
        list_widget = QListWidget(); list_widget.setAlternatingRowColors(True); layout.addWidget(list_widget)
        btn_layout = QHBoxLayout(); add_btn = QPushButton("Přidat"); rem_btn = QPushButton("Odebrat"); edit_btn = QPushButton("Upravit")
        btn_layout.addWidget(add_btn); btn_layout.addWidget(rem_btn); btn_layout.addWidget(edit_btn); layout.addLayout(btn_layout)
        data_source = parent_data.get(key, []); is_dict = isinstance(data_source, dict)

        def populate_list():
            list_widget.clear()
            items = data_source.values() if is_dict else data_source
            for i, item_data in enumerate(items):
                id_key = list(data_source.keys())[i] if is_dict else i
                name = str(item_data)
                if isinstance(item_data, dict): name = str(item_data.get('name', item_data.get('id', f"Položka [{id_key}]")))
                item = QListWidgetItem(name); item.setData(Qt.UserRole, id_key); list_widget.addItem(item)
        
        def edit_selected():
            if not list_widget.currentItem(): return
            item_key = list_widget.currentItem().data(Qt.UserRole)
            item_data = data_source[item_key] if is_dict else data_source[item_key]
            if isinstance(item_data, str):
                if item_data.startswith('VEC'): self._open_vector_editor(data_source, item_key)
                else:
                    text, ok = QInputDialog.getText(self, "Upravit hodnotu", "Hodnota:", QLineEdit.Normal, item_data)
                    if ok: data_source[item_key] = text; self.build_form(); self.data_changed.emit()
            else:
                # --- ZAČÁTEK OPRAVY ---
                sub_item_type_map = {'quests': 'quest', 'guards': 'guard', 'reward': 'reward_item', 'items': 'shop_item'}
                sub_item_type = sub_item_type_map.get(key, 'unknown')
                self._open_sub_editor_dialog(item_data, sub_item_type)
                # --- KONEC OPRAVY ---

        def add_item():
            templates = {'quests': {'name': 'Nový Quest'}, 'guards': {'name': 'Nová Stráž'}, 'reward': {'id': 'money', 'amount': 10}, 'items': {'id':'item_id', 'price': 1}, 'random_coords': 'VEC4(0,0,0,0)', 'job': 'job_name', 'anim': 'anim_name'}
            new_item_data = templates.get(key, {})
            if is_dict:
                new_id = (max(data_source.keys()) + 1) if data_source else 1; data_source[new_id] = new_item_data
            else: data_source.append(new_item_data)
            self.build_form(); self.data_changed.emit()

        def remove_item():
            if not list_widget.currentItem(): return
            item_key = list_widget.currentItem().data(Qt.UserRole)
            if is_dict: del data_source[item_key]
            else: data_source.pop(item_key)
            self.build_form(); self.data_changed.emit()

        add_btn.clicked.connect(add_item); rem_btn.clicked.connect(remove_item)
        edit_btn.clicked.connect(edit_selected); list_widget.itemDoubleClicked.connect(edit_selected)
        populate_list(); return container

    def _open_sub_editor_dialog(self, data_dict, item_type):
        # Pokud je typ neznámý, zkusíme ho odhadnout nebo použijeme fallback
        if item_type not in self.schemas:
            key_map = {frozenset(['id', 'price']): 'shop_item', frozenset(['id', 'amount']): 'reward_item'}
            item_type = key_map.get(frozenset(data_dict.keys()), 'subobject')

        dialog = QDialog(self); dialog.setWindowTitle(f"Úprava: {item_type}"); dialog.setMinimumWidth(600)
        dlg_layout = QVBoxLayout(dialog)
        # Přidáno 'subobject' schéma pro fallback
        if item_type == 'subobject': self.schemas['subobject'] = {'keys': sorted(data_dict.keys())}
        editor = ItemEditorWidget(item_type, data_dict, self.presets)
        dlg_layout.addWidget(editor)
        editor.data_changed.connect(self.data_changed.emit)
        btn_box = QDialogButtonBox(QDialogButtonBox.Ok); btn_box.accepted.connect(dialog.accept)
        dlg_layout.addWidget(btn_box); dialog.exec_(); self.build_form()

    def _open_vector_editor(self, data_container, key):
        is_list = isinstance(data_container, list); initial_val = data_container[key] if not is_list else data_container[key]
        dialog = VectorDialog(initial_val, self)
        if dialog.exec_() == QDialog.Accepted:
            new_val = dialog.get_value()
            data_container[key] = new_val
            self.data_changed.emit(); self.build_form()

class VectorDialog(QDialog):
    def __init__(self, initial_value, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Editor souřadnic"); self.vec_type = "VEC3"; values = [0.0, 0.0, 0.0]
        try:
            match = re.match(r"(VEC[34])\s*\((.*)\)", initial_value)
            if match:
                self.vec_type, nums_str = match.groups()
                values = [float(v.strip()) for v in nums_str.split(',')]
        except (AttributeError, ValueError, TypeError): pass
        layout = QFormLayout(self); self.spinboxes = []
        num_coords = 4 if self.vec_type == "VEC4" else 3
        for i in range(num_coords):
            sb = QDoubleSpinBox(); sb.setRange(-20000, 20000); sb.setDecimals(6)
            if i < len(values): sb.setValue(values[i])
            layout.addRow(QLabel(f"{'XYZW'[i]}:"), sb); self.spinboxes.append(sb)
        button_box = QDialogButtonBox(QDialogButtonBox.Ok | QDialogButtonBox.Cancel)
        button_box.accepted.connect(self.accept); button_box.rejected.connect(self.reject)
        layout.addRow(button_box)
    def get_value(self): return f"{self.vec_type}({', '.join(str(sb.value()) for sb in self.spinboxes)})"
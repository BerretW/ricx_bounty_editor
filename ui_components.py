# /quest_editor/ui_components.py
# -*- coding: utf-8 -*-

import re
import copy
from PyQt5.QtWidgets import (
    QWidget, QVBoxLayout, QHBoxLayout, QFormLayout, QLineEdit, QLabel, QPushButton,
    QComboBox, QCheckBox, QDoubleSpinBox, QListWidget, QListWidgetItem, QDialog,
    QDialogButtonBox, QGroupBox, QTextEdit, QInputDialog, QSpinBox, QMessageBox
)
from PyQt5.QtCore import Qt, pyqtSignal
from PyQt5.QtGui import QIntValidator
from lua_helper import LuaHelper

# Funkce pro detekci, zda je řetězec vektor
def is_vector_string(s):
    if not isinstance(s, str):
        return False
    return s.lower().strip().startswith(('vec3', 'vec4', 'vector3', 'vector4'))

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
        
        # Klíče, které jsou seznamem, ale mohou být i `nil`
        self.nullable_list_keys = {'job', 'random_coords', 'anim'}
        
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
            'shop_item': {"keys": ['id', 'price']},
            'extra_reward': {"keys": ['killer_weapon', 'reward']},
            'other_quest_requirement': {"keys": ['quest_npc', 'questid']},
        }

        self.dict_keys = ['ped', 'blip', 'reset_progress', 'shop', 'target', 'extra_reward', 'areablip', 'other_quest_requirement']
        self.list_keys = ['random_coords', 'job', 'quests', 'reward', 'guards', 'items', 'anim', 'pos']

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
        
        # --- START OF CORRECTED LOGIC ---
        if key == 'other_quest_requirement':
            container = QWidget(); h_layout = QHBoxLayout(container); h_layout.setContentsMargins(0, 0, 0, 0)
            if isinstance(value, dict):
                edit_btn = QPushButton("Upravit závislost..."); edit_btn.clicked.connect(lambda _, d=value, k=key: self._open_sub_editor_dialog(d, k))
                del_btn = QPushButton("Smazat"); del_btn.setFixedWidth(80)
                del_btn.clicked.connect(lambda _, d=parent_data, k=key: self._set_requirement_to_false(d, k))
                h_layout.addWidget(edit_btn); h_layout.addWidget(del_btn)
            else:
                create_btn = QPushButton("Vytvořit závislost na jiném questu")
                create_btn.clicked.connect(lambda _, d=parent_data, k=key: self._create_requirement_dict(d, k))
                h_layout.addWidget(create_btn)
            layout.addRow(QLabel("Závislost:"), container)
        
        elif key in self.nullable_list_keys and isinstance(value, list):
            container = QWidget()
            h_layout = QHBoxLayout(container)
            h_layout.setContentsMargins(0, 0, 0, 0)
            list_editor = self._create_list_editor(parent_data, key)
            h_layout.addWidget(list_editor)
            del_btn = QPushButton("Smazat")
            del_btn.setToolTip(f"Smaže celý klíč '{key}' a nastaví ho na nil.")
            del_btn.setFixedWidth(80)
            del_btn.clicked.connect(lambda _, d=parent_data, k=key: self._set_key_to_none(d, k))
            h_layout.addWidget(del_btn)
            layout.addRow(QLabel(f"{key}:"), container)

        elif key == 'pos' and isinstance(value, list):
            layout.addRow(QLabel(f"{key} (seznam):"), self._create_list_editor(parent_data, key))
        
        elif key == 'shop' and isinstance(value, dict):
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
        # --- END OF CORRECTED LOGIC ---

    def _set_key_to_none(self, parent_data, key):
        parent_data[key] = None
        self.build_form()
        self.data_changed.emit()

    def _set_requirement_to_false(self, parent_data, key):
        parent_data[key] = False
        self.build_form()
        self.data_changed.emit()

    def _create_requirement_dict(self, parent_data, key):
        parent_data[key] = {'quest_npc': 1, 'questid': 1}
        self.build_form()
        self.data_changed.emit()
    
    def _add_missing_field(self, key):
        if key == 'other_quest_requirement': self.data_dict[key] = False
        elif key == 'shop': self.data_dict[key] = {'completed_quest_requirement': 0, 'items': []}
        elif key == 'blip': self.data_dict[key] = {'enable': True}
        elif key in self.dict_keys: self.data_dict[key] = {}
        elif key in self.list_keys: self.data_dict[key] = []
        else: self.data_dict[key] = None
        self.build_form(); self.data_changed.emit()

    def _create_simple_widget(self, parent_data, key):
        value = parent_data.get(key)
        widget = None
        
        if value is None:
            btn = QPushButton("Vytvořit hodnotu")
            def create_value():
                if key in self.list_keys: parent_data[key] = []
                elif key in self.dict_keys: parent_data[key] = {}
                else: parent_data[key] = ""
                self.build_form(); self.data_changed.emit()
            btn.clicked.connect(create_value)
            return btn

        if key in ['preset', 'quest_npc', 'questid']:
            widget = QSpinBox(); widget.setRange(-2147483647, 2147483647)
            widget.setValue(int(value)); widget.setButtonSymbols(QSpinBox.NoButtons)
            widget.valueChanged.connect(lambda v, d=parent_data, k=key: (d.update({k: v}), self.data_changed.emit()))
            return widget

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
            if is_vector_string(value):
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
                        if k in ['model', 'weapon', 'style', 'animal_brawl']:
                            if not (text.startswith('"') and text.endswith('"')): text = f'"{text}"'
                            final_val = f"GHK({text})"
                        d.update({k: final_val})
                        self.data_changed.emit()
                        
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
        btn_layout.addWidget(add_btn); btn_layout.addWidget(rem_btn); btn_layout.addWidget(edit_btn)
        
        if key == 'guards':
            copy_btn = QPushButton("Kopírovat")
            btn_layout.addWidget(copy_btn)

        layout.addLayout(btn_layout)
        
        def populate_list():
            list_widget.clear()
            current_data_source = parent_data.get(key, [])
            items = current_data_source.values() if isinstance(current_data_source, dict) else current_data_source
            for i, item_data in enumerate(items):
                id_key = list(current_data_source.keys())[i] if isinstance(current_data_source, dict) else i
                name = str(item_data)
                if isinstance(item_data, dict): name = str(item_data.get('name', item_data.get('id', f"Položka [{id_key}]")))
                item = QListWidgetItem(name); item.setData(Qt.UserRole, id_key); list_widget.addItem(item)
        
        def edit_selected():
            if not list_widget.currentItem(): return
            current_data_source = parent_data.get(key, [])
            item_key = list_widget.currentItem().data(Qt.UserRole)
            item_data = current_data_source[item_key] if isinstance(current_data_source, dict) else current_data_source[item_key]
            if isinstance(item_data, str):
                if is_vector_string(item_data): self._open_vector_editor(current_data_source, item_key)
                else:
                    text, ok = QInputDialog.getText(self, "Upravit hodnotu", "Hodnota:", QLineEdit.Normal, item_data)
                    if ok: current_data_source[item_key] = text; self.build_form(); self.data_changed.emit()
            else:
                sub_item_type_map = {'quests': 'quest', 'guards': 'guard', 'reward': 'reward_item', 'items': 'shop_item'}
                sub_item_type = sub_item_type_map.get(key, 'unknown')
                self._open_sub_editor_dialog(item_data, sub_item_type)

        def add_item():
            current_data_source = parent_data.get(key)
            is_dict_list_local = isinstance(current_data_source, dict)
            templates = {'quests': {'name': 'Nový Quest', 'desc': 'Popis nového questu.','reward': [{'id': 'money', 'amount': 100}],'start_pos': 'VEC3(0.0,0.0,0.0)','spawn_distance': 50.0,'target': {'name': 'Nový Cíl','model': 'GHK(u_m_m_bht_odriscollsleeping)','preset': 0,'pos': 'VEC3(0.0,0.0,0.0)','heading': 0.0,'weapon': 'GHK(weapon_revolver_cattleman)','combat': 'defensive','health': 100,'blip': True,'extra_reward': False,'areablip': {'style': 'GHK(BLIP_STYLE_FM_EVENT_RADIUS)','radius': 60.0},'img': ''},'guards': []},'guards': {'name': 'Nová Stráž','ped': {'model': 'GHK(a_m_m_unicorpse_01)','preset': 0},'weapon': 'GHK(weapon_revolver_cattleman)','combat': 'defensive','pos': 'VEC3(0.0,0.0,0.0)','heading': 0.0,'health': 100,'blip': False},'reward': {'id': 'money','amount': 10},'items': {'id':'item_id','price': 1},'pos': 'VEC3(0.0,0.0,0.0)','random_coords': 'vector4(0,0,0,0)','job': 'job_name','anim': 'anim_name'}
            
            new_item_data = copy.deepcopy(templates.get(key, ""))
            
            if is_dict_list_local:
                numeric_keys = [k for k in current_data_source.keys() if isinstance(k, int)]
                new_id = (max(numeric_keys) + 1) if numeric_keys else 1
                current_data_source[new_id] = new_item_data
            else:
                if not isinstance(current_data_source, list): parent_data[key] = []; current_data_source = parent_data[key]
                current_data_source.append(new_item_data)
            self.build_form(); self.data_changed.emit()

        def remove_item():
            current_data_source = parent_data.get(key, [])
            if not list_widget.currentItem(): return
            item_key = list_widget.currentItem().data(Qt.UserRole)
            if isinstance(current_data_source, dict): del current_data_source[item_key]
            else:
                if isinstance(item_key, int) and item_key < len(current_data_source): current_data_source.pop(item_key)
            self.build_form(); self.data_changed.emit()

        def copy_selected():
            if not list_widget.currentItem():
                QMessageBox.warning(self, "Chyba", "Nejprve vyberte stráž ke kopírování.")
                return
            
            current_data_source = parent_data.get(key)
            item_key = list_widget.currentItem().data(Qt.UserRole)
            original_item_data = current_data_source[item_key]
            new_item_data = copy.deepcopy(original_item_data)
            
            if 'name' in new_item_data:
                new_item_data['name'] += " (kopie)"
            
            if isinstance(current_data_source, list):
                current_data_source.append(new_item_data)
            else:
                numeric_keys = [k for k in current_data_source.keys() if isinstance(k, int)]
                new_id = (max(numeric_keys) + 1) if numeric_keys else 1
                current_data_source[new_id] = new_item_data
                
            self.build_form(); self.data_changed.emit()


        add_btn.clicked.connect(add_item); rem_btn.clicked.connect(remove_item)
        edit_btn.clicked.connect(edit_selected); list_widget.itemDoubleClicked.connect(edit_selected)
        if key == 'guards':
            copy_btn.clicked.connect(copy_selected)

        populate_list(); return container
        
    def _open_sub_editor_dialog(self, data_dict, item_type):
        if item_type not in self.schemas:
            key_map = {frozenset(['id', 'price']): 'shop_item', frozenset(['id', 'amount']): 'reward_item'}
            item_type = key_map.get(frozenset(data_dict.keys()), 'subobject')
        dialog = QDialog(self); dialog.setWindowTitle(f"Úprava: {item_type}"); dialog.setMinimumWidth(600)
        dlg_layout = QVBoxLayout(dialog)
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
    """Dialog pro jednoduchou úpravu hodnot vector3 a vector4."""
    def __init__(self, initial_value, parent=None):
        super().__init__(parent); self.setWindowTitle("Editor souřadnic"); self.current_value = initial_value
        main_layout = QVBoxLayout(self)
        self.line_edit = QLineEdit(self.current_value); self.line_edit.setPlaceholderText("Vložte celý řetězec, např. vector3(x, y, z)"); main_layout.addWidget(self.line_edit)
        parse_button = QPushButton("Načíst hodnoty z textu"); parse_button.clicked.connect(self._parse_line_edit); main_layout.addWidget(parse_button)
        separator = QGroupBox(); separator.setFlat(True); main_layout.addWidget(separator)
        form_layout = QFormLayout(); self.spinboxes = []; self.vec_type_internal = "vector3"; self._parse_value(self.current_value)
        num_coords = 4 if '4' in self.vec_type_internal else 3
        labels = "XYZW" if num_coords == 4 else "XYZ"
        for i, label in enumerate(labels):
            sb = QDoubleSpinBox(); sb.setRange(-50000.0, 50000.0); sb.setDecimals(6); sb.setSingleStep(0.1)
            sb.valueChanged.connect(self._update_line_edit_from_spinboxes); self.spinboxes.append(sb)
            form_layout.addRow(QLabel(f"{label}:"), sb)
        main_layout.addLayout(form_layout); self._update_spinboxes(self.parsed_values)
        button_box = QDialogButtonBox(QDialogButtonBox.Ok | QDialogButtonBox.Cancel); button_box.accepted.connect(self.accept); button_box.rejected.connect(self.reject)
        main_layout.addWidget(button_box)
    
    def _parse_value(self, value_str):
        self.parsed_values = [0.0, 0.0, 0.0, 0.0]
        try:
            match = re.match(r"(vector[34])\s*\((.*)\)\s*$", str(value_str).strip(), re.IGNORECASE)
            if match: 
                vec_type, nums_str = match.groups()
                self.vec_type_internal = vec_type.lower()
                parsed = [float(v.strip()) for v in nums_str.split(',')]
                self.parsed_values = (parsed + [0.0, 0.0, 0.0, 0.0])[:4]
        except (AttributeError, ValueError, TypeError) as e: 
            print(f"Chyba při parsování vektoru '{value_str}': {e}")
            self.vec_type_internal = "vector3"

    def _update_spinboxes(self, values):
        for i, sb in enumerate(self.spinboxes):
            if i < len(values): sb.blockSignals(True); sb.setValue(values[i]); sb.blockSignals(False)

    def _update_line_edit_from_spinboxes(self):
        num_coords = 4 if '4' in self.vec_type_internal else 3
        values = [f"{sb.value():.6f}".rstrip('0').rstrip('.') for sb in self.spinboxes[:num_coords]]
        new_value_str = f"{self.vec_type_internal}({', '.join(values)})"
        self.line_edit.setText(new_value_str)
        self.current_value = new_value_str

    def _parse_line_edit(self): 
        value_from_text = self.line_edit.text()
        self._parse_value(value_from_text)
        if (('4' in self.vec_type_internal and len(self.spinboxes) != 4) or 
            ('3' in self.vec_type_internal and len(self.spinboxes) != 3)):
             QMessageBox.information(self, "Změna typu vektoru", "Typ vektoru byl změněn. Zavřete a znovu otevřete editor pro aktualizaci polí.")
        self._update_spinboxes(self.parsed_values)
        self._update_line_edit_from_spinboxes()

    def get_value(self):
        self._update_line_edit_from_spinboxes()
        return self.line_edit.text()
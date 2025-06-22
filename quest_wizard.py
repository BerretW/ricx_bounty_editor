# quest_wizard.py
from PyQt5.QtWidgets import (
    QDialog, QVBoxLayout, QLineEdit, QTextEdit, QDoubleSpinBox,
    QLabel, QPushButton, QFormLayout, QDialogButtonBox
)
from PyQt5.QtCore import Qt

class QuestWizardDialog(QDialog):
    def __init__(self, presets, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Průvodce přidáním questu")
        self.setMinimumWidth(500)
        self.presets = presets
        self.result_data = {}
        self._build_ui()

    def _build_ui(self):
        layout = QVBoxLayout(self)

        form = QFormLayout()
        self.name_edit = QLineEdit()
        self.desc_edit = QTextEdit(); self.desc_edit.setFixedHeight(60)
        self.pos_edit = QLineEdit("vector3(0.0, 0.0, 0.0)")
        self.dist_spin = QDoubleSpinBox(); self.dist_spin.setValue(50.0); self.dist_spin.setRange(0.0, 10000.0)

        form.addRow("Název questu:", self.name_edit)
        form.addRow("Popis:", self.desc_edit)
        form.addRow("Pozice spuštění (vector3):", self.pos_edit)
        form.addRow("Vzdálenost spuštění:", self.dist_spin)

        layout.addLayout(form)

        self.reward_edit = QLineEdit("money:100")
        layout.addWidget(QLabel("Odměna (např. money:100, itemid:3):"))
        layout.addWidget(self.reward_edit)

        self.target_name = QLineEdit("Nepřítel")
        self.target_model = QLineEdit("u_m_m_bht_odriscollsleeping")
        self.target_weapon = QLineEdit("weapon_revolver_cattleman")

        layout.addWidget(QLabel("Cíl:"))
        tform = QFormLayout()
        tform.addRow("Jméno:", self.target_name)
        tform.addRow("Model:", self.target_model)
        tform.addRow("Zbraň:", self.target_weapon)
        layout.addLayout(tform)

        buttons = QDialogButtonBox(QDialogButtonBox.Ok | QDialogButtonBox.Cancel)
        buttons.accepted.connect(self.accepted)
        buttons.rejected.connect(self.reject)
        layout.addWidget(buttons)

    def accepted(self):
        reward_raw = self.reward_edit.text()
        reward = []
        for item in reward_raw.split(","):
            if ":" in item:
                k, v = item.split(":")
                reward.append({"id": k.strip(), "amount": int(v.strip())})

        self.result_data = {
            "name": self.name_edit.text().strip() or "Nový Quest",
            "desc": self.desc_edit.toPlainText().strip(),
            "start_pos": self.pos_edit.text().strip(),
            "spawn_distance": self.dist_spin.value(),
            "reward": reward,
            "guards": [],
            "target": {
                "name": self.target_name.text().strip(),
                "model": self.target_model.text().strip(),
                "preset": 0,
                "pos": self.pos_edit.text().strip(),
                "heading": 0.0,
                "weapon": self.target_weapon.text().strip(),
                "combat": "defensive",
                "health": 100,
                "blip": True,
                "extra_reward": False,
                "areablip": {
                    "style": "GHK(BLIP_STYLE_FM_EVENT_RADIUS)",
                    "radius": 60.0
                },
                "img": "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png"
            }
        }
        self.accept()

    def get_result(self):
        return self.result_data
# /quest_editor/main.py
# -*- coding: utf-8 -*-

import sys
from PyQt5.QtWidgets import QApplication
from main_window import QuestEditor

def main():
    """Hlavní funkce pro spuštění aplikace."""
    app = QApplication(sys.argv)
    
    # Pokus o načtení tmavého stylu
    try:
        import qdarkstyle
        app.setStyleSheet(qdarkstyle.load_stylesheet_pyqt5())
    except ImportError:
        print("qdarkstyle not found, using default Fusion style.")
        app.setStyle("Fusion")

    # Vytvoření a zobrazení hlavního okna
    editor = QuestEditor()
    editor.show()
    
    # Spuštění event loopu aplikace
    sys.exit(app.exec_())

if __name__ == '__main__':
    main()
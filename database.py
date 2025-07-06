# /quest_editor/database.py
# -*- coding: utf-8 -*-

import pymysql # <-- ZMĚNA: Nový import
import pymysql.cursors # <-- ZMĚNA: Potřebné pro slovníkové kurzory
import json
import configparser

class Database:
    """Třída pro správu připojení a operací s MySQL databází pomocí PyMySQL."""
    def __init__(self, config_path='db_config.ini'):
        config = configparser.ConfigParser()
        config.read(config_path)
        
        self.config = config['mysql']
        self.connection = None
        self.connect()
        self.ensure_schema()

    def connect(self):
        """Naváže připojení k databázi pomocí PyMySQL."""
        try:
            # ZMĚNA: Připojovací argumenty jsou mírně odlišné
            connection_args = {
                'host': self.config['host'],
                'user': self.config['user'],
                'password': self.config['password'],
                'database': self.config['database'],
                'charset': self.config.get('charset', 'utf8mb4'), # Výchozí je utf8mb4
                'cursorclass': pymysql.cursors.DictCursor # Vždy vracet výsledky jako slovník
            }
            if self.config.get('port'):
                connection_args['port'] = int(self.config['port'])
            
            # ZMĚNA: Voláme pymysql.connect
            self.connection = pymysql.connect(**connection_args)

        except pymysql.MySQLError as err: # <-- ZMĚNA: Odchytáváme jiný typ chyby
            print(f"Chyba při připojování k MySQL (PyMySQL): {err}")
            self.connection = None
        except KeyError as e:
            print(f"Chyba konfigurace: V souboru db_config.ini chybí klíč '{e.args[0]}'.")
            self.connection = None

    def ensure_schema(self):
        """Zajistí, že existuje potřebná tabulka v databázi."""
        if not self.connection: return
        # ZMĚNA: Používáme with pro automatické zavření kurzoru
        try:
            with self.connection.cursor() as cursor:
                cursor.execute("""
                    CREATE TABLE IF NOT EXISTS quest_configs (
                        id INT AUTO_INCREMENT PRIMARY KEY,
                        name VARCHAR(255) NOT NULL UNIQUE,
                        data LONGTEXT NOT NULL,
                        last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
                    );
                """)
            # DDL (CREATE TABLE) příkazy často nepotřebují explicitní commit, ale je to bezpečnější
            self.connection.commit()
            print("Databázové schéma je připraveno (PyMySQL).")
        except pymysql.MySQLError as err:
            print(f"Chyba při vytváření tabulky: {err}")

    def get_config_list(self):
        """Vrátí seznam všech uložených konfigurací (ID a název)."""
        if not self.connection: return []
        configs = []
        try:
            with self.connection.cursor() as cursor:
                cursor.execute("SELECT id, name, last_updated FROM quest_configs ORDER BY name")
                configs = cursor.fetchall()
        except pymysql.MySQLError as err:
            print(f"Chyba při načítání seznamu konfigurací: {err}")
        return configs

    def load_config(self, config_id):
        """Načte data konkrétní konfigurace z DB podle jejího ID."""
        if not self.connection: return None
        data = None
        try:
            with self.connection.cursor() as cursor:
                # Poznámka: PyMySQL také používá %s jako placeholder, takže dotaz je stejný
                cursor.execute("SELECT data FROM quest_configs WHERE id = %s", (config_id,))
                result = cursor.fetchone()
                if result:
                    data = json.loads(result['data'], object_hook=lambda d: {int(k) if k.isdigit() else k: v for k, v in d.items()})
        except pymysql.MySQLError as err:
            print(f"Chyba při načítání konfigurace {config_id}: {err}")
        except json.JSONDecodeError as err:
            print(f"Chyba při parsování JSON z databáze pro config ID {config_id}: {err}")
        return data

    def save_config(self, config_id, data_dict):
        """Uloží (aktualizuje) data pro existující konfiguraci."""
        if not self.connection: return False
        try:
            json_data = json.dumps(data_dict, indent=4)
            with self.connection.cursor() as cursor:
                cursor.execute("UPDATE quest_configs SET data = %s WHERE id = %s", (json_data, config_id))
            self.connection.commit()
            return True
        except pymysql.MySQLError as err:
            print(f"Chyba při ukládání konfigurace {config_id}: {err}")
            self.connection.rollback()
            return False

    def create_new_config(self, name, data_dict):
        """Vytvoří nový záznam s konfigurací v databázi."""
        if not self.connection: return None
        try:
            json_data = json.dumps(data_dict, indent=4)
            with self.connection.cursor() as cursor:
                cursor.execute("INSERT INTO quest_configs (name, data) VALUES (%s, %s)", (name, json_data))
                # ZMĚNA: lastrowid je vlastnost kurzoru, ne spojení
                new_id = cursor.lastrowid
            self.connection.commit()
            return new_id
        except pymysql.MySQLError as err:
            print(f"Chyba při vytváření nové konfigurace '{name}': {err}")
            self.connection.rollback()
            return None
            
    def close(self):
        """Zavře spojení s databází."""
        if self.connection:
            self.connection.close()
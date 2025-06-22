# /quest_editor/lua_helper.py
# -*- coding: utf-8 -*-

import re
from slpp import slpp as lua

class LuaHelper:
    """Pomocná třída pro parsování a formátování LUA tabulek."""
    @staticmethod
    def clean_lua_for_parsing(lua_str):
        lua_str = re.sub(r'--\[\[.*?\]\]', '', lua_str, flags=re.DOTALL)  # multi-line komentáře
        lua_str = re.sub(r'--.*', '', lua_str)  # jednořádkové komentáře
        lua_str = lua_str.strip()

        lua_str = re.sub(r'GetHashKey\s*\(\s*["\']?([^"\')]+)["\']?\s*\)', r"'GHK(\1)'", lua_str)
        lua_str = re.sub(r'vector3\s*\(([^)]+)\)', r"'VEC3(\1)'", lua_str)
        lua_str = re.sub(r'vector4\s*\(([^)]+)\)', r"'VEC4(\1)'", lua_str)
        return lua_str

    @staticmethod
    def _safe_lua_key(key):
        if isinstance(key, str) and re.fullmatch(r'[a-zA-Z_][a-zA-Z0-9_]*', key):
            return key
        return f"[{LuaHelper.format_value_to_lua(key)}]"

    @staticmethod
    def format_value_to_lua(value, indent_level=1, parent_key=None):
        indent = "    " * indent_level
        if value is None:
            return "nil"
        if isinstance(value, bool):
            return "true" if value else "false"
        if isinstance(value, (int, float)):
            return str(value)

        if isinstance(value, str):
            if value.startswith('GHK('):
                content = value[4:-1].strip("'\"")
                return f'GetHashKey("{content}")'
            if parent_key in ['model', 'weapon', 'style', 'animal_brawl']:
                return f'GetHashKey("{value.strip("\"")}")'
            if value.startswith('VEC3('):
                return f'vector3({value[5:-1]})'
            if value.startswith('VEC4('):
                return f'vector4({value[5:-1]})'
            if re.fullmatch(r'[A-Z_0-9]+', value):
                return value
            return '"' + value.replace('\\', '\\\\').replace('"', '\\"').replace('\n', '\\n') + '"'

        if isinstance(value, list):
            items = [f"{indent}{LuaHelper.format_value_to_lua(i, indent_level + 1)}" for i in value]
            return "{\n" + ",\n".join(items) + f"\n{indent[:-4]}}}"

        if isinstance(value, dict):
            items = []
            keys = sorted(value.keys(), key=lambda x: (isinstance(x, str), x))
            for key in keys:
                key_str = LuaHelper._safe_lua_key(key)
                val = LuaHelper.format_value_to_lua(value[key], indent_level + 1, parent_key=key)
                items.append(f"{indent}{key_str} = {val}")
            return "{\n" + ",\n".join(items) + f"\n{indent[:-4]}}}"

        return "nil"

    @staticmethod
    def get_clean_preset_name(value_str):
        if not isinstance(value_str, str): return str(value_str)
        match = re.match(r'GHK\((.*)\)', value_str)
        return match.group(1).strip("'\"") if match else value_str

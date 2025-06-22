# /quest_editor/lua_helper.py
# -*- coding: utf-8 -*-

import re
from slpp import slpp as lua

class LuaHelper:
    """Pomocná třída pro parsování a formátování LUA tabulek."""
    @staticmethod
    def clean_lua_for_parsing(lua_str):
        lua_str = re.sub(r'--.*', '', lua_str)
        lua_str = re.sub(r'GetHashKey\s*\(\s*([^)]+)\s*\)', lambda m: f"'GHK({m.group(1).strip()})'", lua_str)
        lua_str = re.sub(r'vector3\s*\(([^)]+)\)', r"'VEC3(\1)'", lua_str)
        lua_str = re.sub(r'vector4\s*\(([^)]+)\)', r"'VEC4(\1)'", lua_str)
        return lua_str

    @staticmethod
    def format_value_to_lua(value, indent_level=1):
        indent = "    " * indent_level
        if value is None: return "nil"
        if isinstance(value, bool): return "true" if value else "false"
        if isinstance(value, (int, float)): return str(value)
        if isinstance(value, str):
            if value.startswith('GHK('): return f'GetHashKey({value[4:-1]})'
            if value.startswith('VEC3('): return f'vector3({value[5:-1]})'
            if value.startswith('VEC4('): return f'vector4({value[5:-1]})'
            if value.isupper() and '_' in value: return value
            return f'"{value}"'.replace('\\', '\\\\')

        if isinstance(value, list):
            items = [f"{indent}{LuaHelper.format_value_to_lua(item, indent_level + 1)}" for item in value]
            return "{\n" + ",\n".join(items) + f"\n{indent[:-4]}}}"

        if isinstance(value, dict):
            items = []
            keys = sorted(value.keys(), key=lambda x: (isinstance(x, str), x))
            for key in keys:
                val = value[key]
                key_str = f'[{key}]' if isinstance(key, int) else f'{key}'
                # --- ZAČÁTEK OPRAVY ---
                # Zjednodušená a opravená logika formátování
                formatted_val = LuaHelper.format_value_to_lua(val, indent_level + 1)
                items.append(f'{indent}{key_str} = {formatted_val}')
                # --- KONEC OPRAVY ---
            return "{\n" + ",\n".join(items) + f"\n{indent[:-4]}}}"
        return 'nil'

    @staticmethod
    def get_clean_preset_name(value_str):
        if not isinstance(value_str, str): return str(value_str)
        match = re.match(r'GHK\((.*)\)', value_str)
        return match.group(1).strip("'\"") if match else value_str
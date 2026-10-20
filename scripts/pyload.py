import json
from pathlib import Path


def load_pokedex():
    project_root = Path(__file__).resolve().parent.parent
    file_path = project_root / "data" / "pokemon.json"

    with open(file_path, "r", encoding="utf-8") as file:
        pokedex = json.load(file)

    return pokedex


pokedex = load_pokedex()
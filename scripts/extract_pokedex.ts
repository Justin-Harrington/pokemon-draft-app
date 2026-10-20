import { Pokedex } from "../external/pokemon-showdown/data/pokedex.ts";
import fs from "fs";

fs.mkdirSync("../data", { recursive: true });

fs.writeFileSync(
    "../data/pokemon.json",
    JSON.stringify(Pokedex, null, 2)
);

console.log(`Exported ${Object.keys(Pokedex).length} Pokémon entries.`);
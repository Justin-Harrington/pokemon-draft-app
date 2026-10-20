#!/usr/bin/env bash

set -e

REPO_URL="https://github.com/smogon/pokemon-showdown.git"
DEST="../external/pokemon-showdown"

mkdir -p external

if [ -d "$DEST/.git" ]; then
    echo "Pokemon Showdown already exists. Updating..."
    git -C "$DEST" pull
else
    echo "Cloning Pokemon Showdown..."
    git clone "$REPO_URL" "$DEST"
fi

echo "Done."
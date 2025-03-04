#!/bin/bash

# Prüfen, ob eine Nummer als Argument übergeben wurde
if [ -z "$1" ]; then
    echo "Fehler: Bitte eine Nummer als Argument angeben."
    echo "Verwendung: ./xxx-softlink.sh <Nummer>"
    exit 1
fi

# Übergebene Nummer speichern
NUMBER="$1"

# Zielverzeichnis und Linknamen festlegen
TARGET_DIR="/home/sprecher/arma3/steamapps/workshop/content/107410/$NUMBER"
LINK_NAME="/home/sprecher/arma3/@$NUMBER"

# Soft-Link erstellen
ln -s "$TARGET_DIR" "$LINK_NAME"

echo "Soft-Link $LINK_NAME -> $TARGET_DIR wurde im Verzeichnis /home/sprecher/arma3 erstellt."


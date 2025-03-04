#!/bin/bash

# Verzeichnisse festlegen
START_DIR="/home/sprecher/arma3/steamapps/workshop/content/107410"
TARGET_DIR="/home/sprecher/arma3/keys"

# In das Startverzeichnis wechseln
cd "$START_DIR" || { echo "Verzeichnis $START_DIR nicht gefunden!"; exit 1; }

# Sicherstellen, dass das Zielverzeichnis existiert
mkdir -p "$TARGET_DIR"

# Durchsuche rekursiv alle Unterverzeichnisse nach .bikey-Dateien
find . -type f -name "*.bikey" | while read -r file; do
    # Hole den Basisnamen und den Pfad
    base_name=$(basename "$file")
    dir_name=$(dirname "$file")

    # Benenne die Datei in Kleinbuchstaben um
    lower_case_name=$(echo "$base_name" | tr '[:upper:]' '[:lower:]')
    lower_case_path="$dir_name/$lower_case_name"

    # Wenn der Name in Kleinbuchstaben anders ist, dann umbenennen
    if [[ "$file" != "$lower_case_path" ]]; then
        mv "$file" "$lower_case_path"
        echo "Umbenannt: $file -> $lower_case_path"
    fi

    # Kopiere die umbenannte Datei ins Zielverzeichnis, überschreibe falls nötig
    cp -f "$lower_case_path" "$TARGET_DIR"
done

echo "Alle .bikey-Dateien wurden rekursiv in Kleinbuchstaben umbenannt und in $TARGET_DIR kopiert."

# Am Ende in das Verzeichnis /home/sprecher/arma3 wechseln
cd /home/sprecher/arma3 || { echo "Verzeichnis nicht gefunden!"; exit 1; }


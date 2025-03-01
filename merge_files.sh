#!/bin/bash

# Vérifier si un argument est passé
if [ -z "$1" ]; then
    echo "Usage: $0 <dossier_source> [fichier_sortie]"
    exit 1
fi

# Dossier source
SOURCE_DIR="$1"

# Fichier de sortie (par défaut "merged_output.txt" s'il n'est pas précisé)
OUTPUT_FILE="${2:-merged_output.txt}"

# Vider le fichier de sortie s'il existe déjà
> "$OUTPUT_FILE"

# Lire tous les fichiers du dossier et de ses sous-dossiers
find "$SOURCE_DIR" -type f | while read -r file; do
    echo "===== Début du fichier: $file =====" >> "$OUTPUT_FILE"
    cat "$file" >> "$OUTPUT_FILE"
    echo -e "\n===== Fin du fichier: $file =====\n" >> "$OUTPUT_FILE"
done

echo "Tous les fichiers ont été fusionnés dans '$OUTPUT_FILE'."

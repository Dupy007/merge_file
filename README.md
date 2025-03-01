# Fusionner le contenu de plusieurs fichiers dans un seul fichier

## Description

Ce script Bash permet de parcourir tous les fichiers d'un dossier (et ses sous-dossiers) et d'écrire leur contenu dans un seul fichier de sortie. Il ajoute également des séparateurs pour identifier l'origine de chaque fichier fusionné.

## Prérequis

- Un système Linux/macOS avec Bash installé
- Les commandes `find`, `cat` et `echo` disponibles (incluses par défaut dans la plupart des distributions Linux/macOS)

## Installation

Aucune installation requise. Il suffit de télécharger le script et de lui donner les droits d'exécution :

```bash
chmod +x merge_files.sh
```

## Utilisation

### Commande de base

```bash
bash merge_files.sh <dossier_source> [fichier_sortie]
```

### Arguments

- `<dossier_source>` : Le chemin du dossier contenant les fichiers à fusionner.
- `[fichier_sortie]` *(optionnel)* : Le nom du fichier de sortie. Si non spécifié, le script utilise `merged_output.txt`.

### Exemple d'utilisation

Fusionner tous les fichiers de `/home/user/documents` en `result.txt` :

```bash
bash merge_files.sh /home/user/documents result.txt
```

Si aucun fichier de sortie n'est précisé, le résultat sera stocké dans `merged_output.txt` :

```bash
bash merge_files.sh /home/user/documents
```

## Fonctionnement du script

1. Vérifie si un dossier source est spécifié.
2. Définit le fichier de sortie (`merged_output.txt` par défaut).
3. Vide le fichier de sortie s'il existe déjà.
4. Utilise `find` pour lister tous les fichiers du dossier et de ses sous-dossiers.
5. Pour chaque fichier trouvé, ajoute :
   - Un en-tête `===== Début du fichier: <nom du fichier> =====`
   - Son contenu
   - Un pied de page `===== Fin du fichier: <nom du fichier> =====`
6. Indique la fin du processus avec un message de confirmation.

## Exemple de sortie générée

```plaintext
===== Début du fichier: /home/user/documents/file1.txt =====
Contenu du fichier 1
===== Fin du fichier: /home/user/documents/file1.txt =====

===== Début du fichier: /home/user/documents/subdir/file2.txt =====
Contenu du fichier 2
===== Fin du fichier: /home/user/documents/subdir/file2.txt =====
```

## Licence

Ce script est distribué sous la licence MIT. Vous êtes libre de l'utiliser et de le modifier selon vos besoins.


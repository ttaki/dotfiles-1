#!/usr/bin/env bash


DOTFILES=$HOME/.dotfiles
BACKUP_DIR=$HOME/dotfiles-backup

set -e # Exit immediately if a command exits with a non-zero status.

echo "Creating backup directory at $BACKUP_DIR"
mkdir -p "$BACKUP_DIR"

linkables=$( find -H "$DOTFILES" -maxdepth 4 -name '.*' )
# echo linkables
for file in $linkables; do
    filename="$( basename "$file" '.*' )"
    target="$HOME/$filename"
    echo $filename
    echo $target
    if [ -f "$target" ]; then
        echo "backing up $filename"
        cp "$target" "$BACKUP_DIR"
    else
        echo -e "$filename does not exist at this location or is a symlink"
    fi
done
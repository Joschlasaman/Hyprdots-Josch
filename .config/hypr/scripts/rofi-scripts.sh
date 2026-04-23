#!/bin/bash
# Rofi script runner: lists all scripts in ~/.config/hypr/scripts/
# and executes the selected one.

SCRIPTS_DIR="$HOME/.config/hypr/scripts"

# List all executable files except this launcher itself
selected=$(find "$SCRIPTS_DIR" -maxdepth 1 -type f -executable ! -name "rofi-scripts.sh" -printf '%f\n' \
    | sort \
    | rofi -dmenu -i -p "Run script")

[[ -n "$selected" ]] && exec "$SCRIPTS_DIR/$selected"

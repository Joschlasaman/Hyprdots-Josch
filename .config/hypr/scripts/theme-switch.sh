#!/bin/bash
# Theme switcher via rofi selection

selected=$(echo -e "dracula\ngruvbox" | rofi -dmenu -i -p "Theme")

[[ -n "$selected" ]] && exec theme-switch "$selected"

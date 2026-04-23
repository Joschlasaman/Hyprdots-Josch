#!/bin/bash
# Wallpaper switcher via rofi + hyprpaper
# Lists all images in ~/wallpaper/ recursively

WALLPAPER_DIR="$HOME/.config/hypr/wallpapers"

selected=$(find "$WALLPAPER_DIR" -type f \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.webp" \) \
    | sort \
    | rofi -dmenu -i -p "Wallpaper")

[[ -z "$selected" ]] && exit 0

# Preload new, set, unload old
hyprctl hyprpaper preload "$selected" 2>/dev/null
hyprctl hyprpaper wallpaper ",$selected" 2>/dev/null

# Update hyprpaper.conf so it persists across restarts
cat > ~/.config/hypr/hyprpaper.conf <<EOF
preload = $selected
wallpaper = ,$selected
EOF

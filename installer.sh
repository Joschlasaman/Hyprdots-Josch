echo "Beginn installation process"

# Dependencies here:

echo "Begin setup"
echo "Dracula GTK Theme setup..."
sudo cp ./theming_files/Dracula /usr/share/themes/
gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Dracula"

echo "Dracula Icon Theme setup..."
gsettings set org.gnome.desktop.interface icon-theme "Dracula"

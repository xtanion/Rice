# Copying gnome extensions
# echo "Copying Extensions"
# cp -r ./gnome-shell/* ~/.local/share/gnome-shell
echo "Installing dash-to-panel"
gnome-extensions install --force dash-to-panel-modded.zip

echo "installling global fonts"
sudo cp -r ./SF-Pro-Expanded-Font /usr/share/fonts/truetype
sudo cp -r ./sfwin/SFPro/TrueType /usr/share/fonts/truetype
sudo cp -r ./sfwin/SFMono/TrueType /usr/share/fonts/truetype

echo "Copying Keybindings"
dconf load '/org/gnome/desktop/wm/keybindings/' < keybindings.dconf
# dconf load '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/' < kb-custom.dconf
dconf load '/org/gnome/settings-daemon/plugins/media-keys/' < kb-media.dconf

echo "changing grub theme"
# sudo mkdir /usr/share/grub/themes/
sudo cp -r grub/src/* /usr/share/grub/themes/
sudo echo 'GRUB_THEME="/usr/share/grub/themes/catppuccin-frappe-grub-theme/theme.txt"' >> /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
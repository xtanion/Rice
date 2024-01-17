# Startup
put every folder in gnome-shell to 
```
~/.local/share/gnome-shell
```
Keybaord config:
backup
```
dconf dump '/org/gnome/desktop/wm/keybindings/' > keybindings.dconf
dconf dump '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/' > kb-custom.dconf
dconf dump /org/gnome/settings-daemon/plugins/media-keys/ > kb-media.dconf


```
load:
```
dconf load '/org/gnome/desktop/wm/keybindings/' < keybindings.dconf
dconf load '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/' < custom-keybindings.dconf

```

**Install Apps**
```
chmod +x install-apps.sh
./install-apps.sh
```
will install: `vs-code`, `chrome`, `spotify`, 

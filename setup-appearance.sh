#!/bin/bash

sudo add-apt-repository ppa:papirus/papirus
sudo apt update
sudo apt install papirus-icon-theme

gsettings set org.gnome.shell.extensions.dash-to-dock.dock-fixed false
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybindings.custom0.binding '<Primary><Alt>f'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybindings.custom0.command 'nautilus'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybindings.custom0.name 'Open Nautilus'

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybindings.custom1.binding '<Primary><Alt>g'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybindings.custom1.command 'gedit'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybindings.custom1.name 'Open gedit'

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybindings ['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/']

gsettings set org.gnome.desktop.interface.icon-theme 'Papirus-Dark'
gsettings set org.gnome.desktop.interface.cursor-theme 'DMZ-White'
gsettings set org.gnome.desktop.interface.gtk-theme 'Adwaita-dark'
gsettings set org.gnome.desktop.interface.enable-hot-corners false
gsettings set org.gnome.desktop.interface.clock-show-weekday true
gsettings set org.gnome.desktop.interface.clock-show-date true
gsettings set org.gnome.shell.enabled-extensions ['hide-activities-button@gnome-shell-extensions.bookmarkd.xyz', 'hidetopbar@mathieu.bidon.ca', 'sound-output-device-chooser@kgshank.net', 'ubuntu-appindicators@ubuntu.com', 'dynamic-panel-transparency@rockon999.github.io']
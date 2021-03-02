#!/bin/bash

dotfiles_install_package termite

# Install config folder
dotfiles_install_component ../termite $HOME/.config/termite

gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/termite
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"

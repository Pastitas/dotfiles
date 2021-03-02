#!/bin/bash
current_dir=${DOTFILES_CURRENT_SOURCE_DIR}

dotfiles_install_package termite

# Install config folder
dotfiles_install_component $current_dir $HOME/.config/termite


gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/termite
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"

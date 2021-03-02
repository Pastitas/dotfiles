#!/bin/bash
current_dir=${DOTFILES_CURRENT_SOURCE_DIR}


dotfiles_install_package terminator

# Install config folder
dotfiles_install_component $current_dir $HOME/.config/terminator

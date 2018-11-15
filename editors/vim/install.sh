#!/bin/bash

DOTVIM="${DOTFILES_CURRENT_SOURCE_DIR}/.config/nvim"

# Create .vim folder if needed
[ -d "$DOTVIM" ] && mkdir -p $DOTVIM

# Install nvim
dotfiles_install_package nvim

# Install config
dotfiles_install_component init.vim $HOME/.config/nvim/init.vim

# Install vim plugins
nvim +PlugInstall

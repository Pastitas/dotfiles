#!/bin/bash

DOTNVIM="$HOME/.config/nvim"

# Create .config/nvim folder if needed
[ -d "$DOTNVIM" ] && mkdir -p $DOTNVIM

# Install nvim
dotfiles_install_package nvim

# Install config
dotfiles_install_component nvim $DOTNVIM

# Install vim plugins
nvim +PlugInstall

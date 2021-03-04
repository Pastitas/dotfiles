#!/bin/bash
current_dir=${DOTFILES_CURRENT_SOURCE_DIR}
DOTNVIM="$HOME/.config/nvim"

# Create .config/nvim folder if needed
[ -d "$DOTNVIM" ] && mkdir -p $DOTNVIM

# Install nvim
dotfiles_install_package nvim

# Install config
dotfiles_install_component $current_dir $DOTNVIM

# Install vim plugins
nvim +PlugInstall

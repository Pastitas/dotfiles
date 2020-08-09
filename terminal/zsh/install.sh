#!/bin/bash
OHMYDIR="$HOME/.oh-my-zsh"
ZSH_CUSTOM="$OHMYDIR/custom/plugins"

dotfiles_install_package zsh
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" || true

# Install fishshell completions
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/zsh-syntax-highlighting
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/zsh-z


# Install config
dotfiles_install_component .zshrc $HOME/.zshrc

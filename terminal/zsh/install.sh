#!/bin/bash
OHMYDIR="$HOME/.oh-my-zsh"
ZSH_CUSTOM="$OHMYDIR/custom/plugins"

dotfiles_install_package zsh
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" || true

# Install fishshell completions
dotfiles_install_remote_component GITHUB zsh-users/zsh-autosuggestions $ZSH_CUSTOM/zsh-autosuggestions
dotfiles_install_remote_component GITHUB zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/zsh-syntax-highlighting
dotfiles_install_remote_component GITHUB gkozak/zsh-z $ZSH_CUSTOM/zsh-z

# Install config
dotfiles_install_component .zshrc $HOME/.zshrc

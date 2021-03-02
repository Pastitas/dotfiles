#!/bin/bash

dotfiles_install_package termite

# Install config folder
dotfiles_install_component ../termite $HOME/.config/termite

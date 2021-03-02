#!/bin/bash

dotfiles_install_package terminator

# Install config folder
dotfiles_install_component ../terminator $HOME/.config/terminator

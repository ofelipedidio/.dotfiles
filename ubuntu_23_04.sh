#!/bin/bash

DOTFILES="$HOME/.dotfiles"
STOW_FOLDERS="kitty,zsh,tmux,nvim,bin"

DOTFILES=$DOTFILES STOW_FOLDERS=$STOW_FOLDERS $DOTFILES/install.sh

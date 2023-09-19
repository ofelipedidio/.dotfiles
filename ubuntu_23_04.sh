#!/bin/bash

# Move Ubuntu folders
if [ ! -e ~/Ubuntu/Desktop/   ]; then mkdir -p ~/Ubuntu; mkdir -p ~/Desktop/;   mv ~/Desktop/   ~/Ubuntu/Desktop/;   fi
if [ ! -e ~/Ubuntu/Downloads/ ]; then mkdir -p ~/Ubuntu; mkdir -p ~/Downloads/; mv ~/Downloads/ ~/Ubuntu/Downloads/; fi
if [ ! -e ~/Ubuntu/Templates/ ]; then mkdir -p ~/Ubuntu; mkdir -p ~/Templates/; mv ~/Templates/ ~/Ubuntu/Templates/; fi
if [ ! -e ~/Ubuntu/Public/    ]; then mkdir -p ~/Ubuntu; mkdir -p ~/Public/;    mv ~/Public/    ~/Ubuntu/Public/;    fi
if [ ! -e ~/Ubuntu/Documents/ ]; then mkdir -p ~/Ubuntu; mkdir -p ~/Documents/; mv ~/Documents/ ~/Ubuntu/Documents/; fi
if [ ! -e ~/Ubuntu/Music/     ]; then mkdir -p ~/Ubuntu; mkdir -p ~/Music/;     mv ~/Music/     ~/Ubuntu/Music/;     fi
if [ ! -e ~/Ubuntu/Pictures/  ]; then mkdir -p ~/Ubuntu; mkdir -p ~/Pictures/;  mv ~/Pictures/  ~/Ubuntu/Pictures/;  fi
if [ ! -e ~/Ubuntu/Videos/    ]; then mkdir -p ~/Ubuntu; mkdir -p ~/Videos/;    mv ~/Videos/    ~/Ubuntu/Videos/;    fi

# Remove pre-existing files
if [ ! -L ~/.config/user-dirs.dirs ]; then rm ~/config/user-dirs; fi

# Configure stow inputs
DOTFILES="$HOME/.dotfiles"
STOW_FOLDERS="kitty,zsh,tmux,nvim,bin,ubuntu"

# Run install
DOTFILES=$DOTFILES STOW_FOLDERS=$STOW_FOLDERS $DOTFILES/install.sh

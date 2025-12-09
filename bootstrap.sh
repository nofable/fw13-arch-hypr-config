#!/bin/bash

# Install Pacman packages
sudo pacman -S --needed - <~/.dotfiles/pkglist.txt

# Install yay
if ! command -v yay >/dev/null 2>&1; then
  git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
  cd ~ && rm -rf yay
fi

# Create .stowrc so we don't need to add dir parameter
if [ -f ~/.stowrc ]; then
  echo "~/.stowrc already exists." >&1
else
  echo "--dir=~/.dotfiles" >~/.stowrc
fi

# Setup stow packages
stow bash
stow fonts
stow hypr
stow kitty
stow nvim
stow starship
stow waybar
stow yay
stow yazi
stow chromium

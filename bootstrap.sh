#!/bin/bash
set -euo pipefail

DOTFILES="$HOME/.dotfiles"

# Install pacman packages (regex filters out comments and empty lines)
sudo pacman -S --needed $(grep -vE '^\s*#|^\s*$' "$DOTFILES/pkglist.txt")

# Install yay
if ! command -v yay >/dev/null 2>&1; then
  tmpdir=$(mktemp -d)
  git clone https://aur.archlinux.org/yay.git "$tmpdir/yay"
  pushd "$tmpdir/yay"
  makepkg -si
  popd
  rm -rf "$tmpdir"
fi

# Setup .stowrc
STOWRC="$HOME/.stowrc"
if [ ! -e "$STOWRC" ]; then
  echo "--dir=$DOTFILES" >"$STOWRC"
fi

# Backup .bashrc if needed
BASHRC="$HOME/.bashrc"
if [ -L "$BASHRC" ]; then
  echo "$BASHRC is already a symlink; assuming stow-managed"
elif [ -e "$BASHRC" ]; then
  BACKUP="$HOME/.bashrc.pre-stow.$(date +%Y%m%d%H%M%S)"
  echo "Moving $BASHRC to $BACKUP"
  mv "$BASHRC" "$BACKUP"
fi

# Stow all packages
for pkg in bash fonts hypr kitty nvim starship waybar yazi chromium; do
  stow "$pkg"
done

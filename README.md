# Framework 13 Arch Linux Hyprland Dotfiles

This repo is the config for my Framework 13 Arch Linux Hyprland setup.
It is the result of an exploratory project where my goal was to setup my developer environment in Arch Linux on a Framework Laptop.

The write up can be found here:
https://notes.nofable.me/framework13-arch-linux-hyprland


## Installation
```bash
git clone https://github.com/nofable/fw13-arch-hypr-config.git .dotfiles
./.dotfiles/bootstrap.sh
```

## Framework 13 Laptop Spec
This is the spec of my Framework 13 Laptop:  
- System: AMD Ryzen™ AI 300 Series - Ryzen™ AI 5 340
- Display: 2.8K
- Memory: DDR5-5600 - 32GB (2 x 16GB)
- Storage: WD_BLACK™ SN7100 NVMe™ - M.2 2280 - 1TB
- Laptop Bezel: Framework Laptop 13 Bezel - Translucent
- Keyboard: British English (2nd Gen)
- Power Adapter: Power Adapter - 60W - UK
- Expansion Cards
	- 2 x USB-C (Translucent)
	- USB-A
	- HDMI (3rd Gen)

## Tooling choices
I decided to use [Stow](https://www.gnu.org/software/stow/manual/stow.html) to manage my configs. And here are my decisions of what packages to use:

Terminal
- [Kitty](https://github.com/kovidgoyal/kitty) for terminal
- [Bash](https://en.wikipedia.org/wiki/Bash_(Unix_shell)) for shell
- [Nvim](https://neovim.io/) & [LazyVim](https://www.lazyvim.org/) for IDE and text editing
- [Starship](https://starship.rs/) for prompt style
- [fzf](https://github.com/junegunn/fzf) for fuzzy finding
- [yazi](https://yazi-rs.github.io/) for file explorer

GUI
- [Hyprland](https://hypr.land/) for compositor
- [Hypridle](https://wiki.hypr.land/Hypr-Ecosystem/hypridle/) for idle timeouts
- [Hyprlock](https://wiki.hypr.land/Hypr-Ecosystem/hyprlock/) for my lock screen
- [Hyprpaper](https://wiki.hypr.land/Hypr-Ecosystem/hyprpaper/) for my wallpaper
- [Waybar](https://github.com/Alexays/Waybar) for the menu bar
- [Mako](https://github.com/emersion/mako) for notifications

Apps
- [Chromium](https://www.chromium.org/Home/) for the browser

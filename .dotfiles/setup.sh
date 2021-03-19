#! /bin/bash

# Do everything from home
cd $HOME

# Install packages
sudo pacman -S --needed - < $HOME/.dotfiles/pkglist.txt

# Make yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg --syncdeps 
cd $HOME

# Use yay to install AUR packages
yay -S - < $HOME/.dotfiles/pkglist_aur.txt

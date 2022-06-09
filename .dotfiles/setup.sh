#! /bin/bash

# Do everything from home
cd $HOME

# Install packages
sudo pacman -S --needed - < $HOME/.dotfiles/pkglist.txt

# Make yay
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg --syncdeps --install
cd $HOME

# Use yay to install AUR packages
paru -S - < $HOME/.dotfiles/pkglist_aur.txt

# We have to read what the informat has to say
informant read

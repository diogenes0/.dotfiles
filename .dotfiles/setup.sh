#! /bin/bash

# Install packages
sudo pacman -S --needed - < $HOME/.dotfiles/pkglist.txt

# Install paru
git clone https://aur.archlinux.org/paru-bin.git $HOME/paru-bin
makepkg --syncdeps --install -p $HOME/paru-bin/PKGBUILD

# Use paru to install AUR packages
paru -S - < $HOME/.dotfiles/pkglist_aur.txt

# We have to read what the informat has to say
informant read

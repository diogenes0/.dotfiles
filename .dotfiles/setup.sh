#! /bin/bash

set -e

# Install packages
doas pacman -Syu
doas pacman -S --needed - < $HOME/.dotfiles/pkglist.txt

# Install paru
if ! command -v paru &> /dev/null
then
    echo "paru not found: installing"
    git clone https://aur.archlinux.org/paru-bin.git $HOME/paru-bin
    cd $HOME/paru-bin
    makepkg --syncdeps --install 
    rm -rf $HOME/paru-bin
fi

# Use paru to install AUR packages
paru -S --needed - < $HOME/.dotfiles/pkglist_aur.txt

# We have to read what the informat has to say
doas informant read

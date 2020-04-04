#!/bin/bash

packages=(
awesome
blueman
brave
cmake
git
thunar
viewnior
vim
xclip
xfce4-terminal
)

for pkg in "${packages[@]}"
do {
        if sudo pacman -Qi $pkg > /dev/null 2>&1 ; then
            echo -en "$pkg already installed\n"
        else
            echo -en "Installing $pkg...\n"
            sudo pacman -S $pkg --noconfirm > /dev/null
            if pacman -Qi $pkg > /dev/null 2>&1
            then
                echo -en "$pkg is now installed\n"
            else
                echo -en "Installing $pkg FAILED\n"
                deps = 1
            fi
        fi
}
done
[[ $deps -ne 1  ]] && echo -en "\nInstallation complete\n" || { 
    echo -en "\nCheck for FAILED packages\n";exit 1; 
}

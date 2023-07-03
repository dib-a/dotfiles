#!/bin/bash

remove_if_exists() {
    local path="$1"
    if [ -f "$path" ]; then
        rm "$path"
    fi

    if [ -d "$path" ]; then
        rm -r "$path"
    fi
}

# Remove available configs
remove_if_exists "/home/$USER/.bashrc"
remove_if_exists "/home/$USER/.bash_profile"
remove_if_exists "/home/$USER/.xinitrc"
remove_if_exists "/home/$USER/.config/kitty"
remove_if_exists "/home/$USER/.config/nvim"
remove_if_exists "/home/$USER/.config/picom"
remove_if_exists "/home/$USER/.config/ranger"

# Copy configs to directory
cp bash_profile /home/$USER/.bash_profile
cp bashrc /home/$USER/.bashrc
cp xinitrc /home/$USER/.xinitrc
mkdir /home/$USER/.config
cp -r kitty /home/$USER/.config/
cp -r nvim /home/$USER/.config/
cp -r picom /home/$USER/.config/
cp -r ranger /home/$USER/.config/

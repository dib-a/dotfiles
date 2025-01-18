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

remove_if_exists ".bash_profile"
remove_if_exists "bashrc"
remove_if_exists "xinitrc"

remove_if_exists "kitty"
remove_if_exists "nvim"
remove_if_exists "picom"
remove_if_exists "ranger"

cp -r /home/$USER/.bash_profile bash_profile
cp -r /home/$USER/.bashrc bashrc
cp -r /home/$USER/.xinitrc xinitrc

cp -r /home/$USER/.config/kitty .
cp -r /home/$USER/.config/nvim .
cp -r /home/$USER/.config/picom .
cp -r /home/$USER/.config/ranger .

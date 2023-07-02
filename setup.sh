#!/bin/bash

# Remove available configs
rm /home/$USER/.bashrc
rm /home/$USER/.bash_profile
rm /home/$USER/.config/kitty
rm /home/$USER/.config/nvim
rm /home/$USER/.config/picom
rm /home/$USER/.config/ranger

# Copy configs to directory
cp bash_profile /home/$USER/.bash_profile
cp bashrc /home/$USER/.bashrc
mkdir /home/$USER/.config
cp -r kitty /home/$USER/.config/
cp -r nvim /home/$USER/.config/
cp -r picom /home/$USER/.config/
cp -r ranger /home/$USER/.config/

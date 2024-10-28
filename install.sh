#!/bin/bash
clear
if [[ -d /usr/share/backgrounds/ ]];
then
sudo mkdir /usr/share/backgrounds/org
sudo mv /usr/share/backgrounds/* /usr/share/backgrounds/org/
sudo mv /home/$USER/wall/* /usr/share/backgrounds/
sudo trash /home/$USER/wall
echo -e "\033[36m Moved existing content to \033[31m/usr/share/backgrounds/org\033[36m and installed the requested wallpapers.\033[0m"
else
sudo mkdir /usr/bin/backgrounds
sudo mv /home/$USER/wall/* /usr/share/backgrounds/
sudo trash /home/$USER/wall
echo -e "\033[36m Directory \033[31m/usr/share/backgrounds\033[36m was created and the requested wallpapers installed.\033[0m"
fi

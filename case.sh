#!/bin/bash

echo "Selete Desktop Environment to Install"
echo "1 - XFCE"
echo "2 - GNOME"
echo "3 - KDE"
echo "4 - Cinnamon"

echo -n "Enter Desktop Environment of your choice: "

read distro;

case $distro in
    1) yay -S xfce4 xfce4-goodies lightdm lightdm-gtk-greeter --noconfirm && sudo systemctl enable --now lightdm;;
    2) yay -S gnome gnome-extra gnome-themes-extra gnome-tweaks gtk-engine-murrine --noconfirm && sudo systemctl enable --now gdm;;
    3) yay -S plasma --noconfirm && sudo systemctl enable --now sddm;;
    4) yay -S cinnamon lightdm lightdm-gtk-greeter --noconfirm && sudo systemctl enable --now lightdm;;
    *) echo "Please enter valid choice."
esac

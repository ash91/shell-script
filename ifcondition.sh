#!/bin/bash

if [ -f ~/Downloads/Joplin-2.11.11.AppImage ];
then
   echo "file exits"
else
   echo "file does not exits"
fi

pkg=htop

if command -v $pkg
then
   echo  "htop is installed"
else
   echo "$pkg is not available in default path installing now"
   sudo pacman -S $pkg --noconfirm
fi
$pkg

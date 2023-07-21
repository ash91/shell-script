#!/bin/bash

release=/etc/os-release

if grep -q "Arch" $release  || grep -q "Endeavour" $release
then
    yay -S appimagelauncher
fi

if grep -q "Ubuntu" $release || grep -q "Debian" $release
then
   sudo apt install kazam
fi

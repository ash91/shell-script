#!/bin/bash

echo "What is your fav Linux distribution?"

echo "1 - Arch"
echo "2 - Fedora"
echo "3 - Debian"
echo "4 - Ubuntu"
echo "5 - Opensuse"

read distro;

case $distro in
    1) echo "Arch is a rolling release distro";;
    2) echo "Fedora is free & opensource distro";;
    3) echo "Debian is a community distribution";;
    4) echo "Ubunut is popular on both servers & computers";;
    5) echo "Opensuse is best for developers & system admins";;
    *) echo "Please enter valid choice."
esac

#!/bin/bash

package=tree	

sudo pacman -S $package --noconfirm >> package.log

if [ $? -eq 0 ]
then
   echo "$package is installed"
   which $package
else
   echo "$package not found" >> failed.log
fi

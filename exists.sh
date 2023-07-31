#!/bin/bash
MyFile=/Documents/garud/arch-install/arch.png
if [ -f "$MyFile" ]; then
echo "$MyFile exists."
else 
echo "$MyFile does not exist."
fi

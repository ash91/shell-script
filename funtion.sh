#!/bin/bash

release=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log

check_exit_status() {
    if [ $? -ne 0 ]
    then
	echo "An error occured, please check the $errorlog file."
    fi
}

if grep -q "Arch" $release  || grep -q "Endeavour" $release
then
    sudo pacman -Syu 1>>$logfile 2>>$errorlog
    check_exit_status
fi

if grep -q "Ubuntu" $release || grep -q "Debian" $release
then
   sudo apt update 1>>$logfile 2>>$errorlog
   check_exit_status
   sudo apt dist-upgrade 1>>$logfile 2>>$errorlog
   check_exit_status 
fi

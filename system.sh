#!/bin/bash
#This is demo script to display sysinfo 
# Check Virtualization Extension
grep -E -c '(vmx|svm)' /proc/cpuinfo
echo "Run this command to make sure you’ve enabled virtualization in on your computer. It should be above 0"
tree .
echo "Date"
date
echo "Uptime"
uptime
echo "Memory Usage"
free -m
echo "Network Usage"
ip a
echo "System Info"
uname -a


#!/bin/bash
#This is demo script to display sysinfo 
# Check Virtualization Extension
echo "grep -E -c '(vmx|svm)' /proc/cpuinfo"
echo "Run this command to make sure you’ve enabled virtualization in on your computer. It should be above 0"
grep -E -c '(vmx|svm)' /proc/cpuinfo
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


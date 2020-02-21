#!/bin/sh
# Simple script to show the CPU temperature formatted for use with i3blocks
temp=$(acpi -t | sed 's/.*, //;s/ degrees //;s/C//')
echo $temp°C
echo $temp°C

if [ 1 -eq "$(echo "$temp > 85" | bc)" ]; then
    echo "#FFAE00"
elif [ 1 -eq "$(echo "$temp > 65" | bc)" ]; then
    echo "#FFF600"
fi

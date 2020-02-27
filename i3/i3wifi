#!/bin/bash
# i3block for the displaying the wifi connectivity level
# If the wifi interface exists but no connection is active, "down" shall be displayed.

if [[ "$(cat /sys/class/net/$1/operstate)" = 'down' ]]; then
    echo "down"
    echo "down"
    echo "#FF0000"
    exit
fi

QUALITY=$(grep $1 /proc/net/wireless | awk '{ print int($3 * 100 / 70) }')

echo $QUALITY% # full text

# color
if [[ $QUALITY -ge 80 ]]; then
    echo "#00FF00"
elif [[ $QUALITY -ge 60 ]]; then
    echo "#FFF600"
elif [[ $QUALITY -ge 40 ]]; then
    echo "#FFAE00"
else
    echo "#FF0000"
fi

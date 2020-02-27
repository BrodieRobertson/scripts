#!/bin/sh
# Opens a terminal to update pacman packages and handle updating my i3block

$TERMINAL -e sudo pacman -Su && polybar-msg -p "$(pidof "polybar")" hook pacman-packages 1 #&& pkill -SIGRTMIN+3 i3blocks

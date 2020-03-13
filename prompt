#!/bin/sh
# Opens a basic yes/no prompt with dmenu
# This is useful for confirming whether an action should be taken

if [ "$(printf "No\nYes" | dmenu -i -p "$1")" = "Yes" ]; then
   $2
fi

#!/bin/sh
# Wrapper script for extramonitor
printf "disconnect\nextra\nduplicate" | dmenu -i -p "Monitor Configuration" | xargs -I % extramonitor "%" "$1" "$2"

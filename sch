#!/bin/sh
url=$(sort ~/search | sed 's/:.*//' | dmenu -i -p "Search Engine" | xargs -I % grep "%:" ~/search | sed 's/.*://')
search=$(echo "" | dmenu -i -p "Search" | xargs -I % encode %)

opnbrow "$1" "$url$search"

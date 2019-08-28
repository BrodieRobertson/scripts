#!/bin/sh
# Opens a dmenu prompt for selecting a search engine and providing a search query
# To avoid issues with spaces and special characters html encoding is applied to the query

url=$(sort ~/.config/search | sed 's/:.*//' | dmenu -i -p "Search Engine" | xargs -I % grep "%:" ~/.config/search | sed 's/.*://')
search=$(echo "" | dmenu -i -p "Search" | xargs -I % encode %)

opnbrow "$1" "$url$search"

#!/bin/sh
# Opens a dmenu prompt for selecting a search engine and providing a search query
# To avoid issues with spaces and special characters html encoding is applied to the query

url=$(sort ~/.config/search/search | sed 's/:.*//' | dmenu -i -p "Search Engine" | xargs -I % grep "%:" ~/.config/search/search | sed 's/.*://')
search=$(sort ~/.config/search/search_history | dmenu -i -p "Search")

# Echo to history file
if [ -z "$(cat ~/.config/search/search_history | grep "$search")" ]; then
    if [ $(cat ~/.config/search/search_history | wc -l) -gt 500 ]; then
        sed -i "1s/^/$search\n/;$ d" ~/.config/search/search_history
    else
        echo "$search" >> ~/.config/search/search_history
    fi
fi

# Open browser if search query provided
if [ ! -z "$search" -a "$search" != "" ]; then
    opnbrow "$1" "$url$(encode "$search")"
fi

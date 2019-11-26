#!/bin/sh
# Opens a dmenu prompt for selecting a search engine and providing a search query
# To avoid issues with spaces and special characters html encoding is applied to the query

SearchHistory='~/.config/search/search_history'
url=$(sort ~/.config/search/search | sed 's/:.*//' | dmenu -i -p "Search Engine" | xargs -I % grep "%:" ~/.config/search/search | sed 's/.*://')
search=$(sort "$SearchHistory" | dmenu -i -p "Search")

# Echo to history file
if [ -z "$(grep "$search" "$SearchHistory")" ]; then
    if [ $(wc -l < "$SearchHistory") -gt 500 ]; then
        sed -i "1s/^/$search\n/;$ d" "$SearchHistory"
    else
        echo "$search" >> "$SearchHistory"
    fi
fi

# Open browser if search query provided
if [ ! -z "$search" -a "$search" != "" ]; then
    opnbrow "$1" "$url$(encode "$search")"
fi

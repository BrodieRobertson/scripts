#!/bin/sh
# Opens a dmenu prompt for selecting a search engine and providing a search query
# To avoid issues with spaces and special characters html encoding is applied to the query

hist=$HOME/.config/search/search_history

url=$(sort ~/.config/search/search | sed 's/:.*//' | dmenu -i -p "Search Engine" | xargs -I % grep "%:" ~/.config/search/search | sed 's/.*://')
search=$(sort "$hist" | dmenu -i -p "Search")

# Echo to history file
if ! grep -q "$search" "$hist"; then
    if [ $(wc -l "$hist") -gt 500 ]; then
        sed -i "1s/^/$search\n/;$ d" "$hist"
    else
        echo "$search" >> "$hist"
    fi
fi

# Open browser if search query provided
[ -n "$search" ] && opnbrow "$1" "$url$(encode "$search")"

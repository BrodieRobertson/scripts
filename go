#!/bin/bash

destination=$1

# Check if a parameter was entered
if [ -z "$destination" ] 
then
    echo "No destination entered"
fi

# Case statement over my supported folders
case $destination in
    "anime") 
        cd ~/Videos/Anime
        ;;
    "uni") 
        cd ~/Documents/Uni/"3rd Year"
        ;;
    "textbook")
        cd ~/Documents/Textbooks/"3rd Year"
        ;;
    *) 
        echo "Unsupported destination"
        exit 1
        ;;
esac

explorer .
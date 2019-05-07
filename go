#!/bin/bash

destination=$1
onlyInShell=$2
failure=false

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
    "txtb")
        cd ~/Documents/Textbooks/"3rd Year"
        ;;
    "script")
        cd ~/scripts
        ;;
    "desk")
        cd ~/desktop
        ;;
    "doc")
        cd ~/documents
        ;;
    # ~ is a really awkward key to press
    "h")
        cd ~
        ;;
    "pic")
        cd ~/pictures
        ;;
    *) 
        echo "Unsupported destination"
        failure=true
        ;;
esac

# Check for failure
# Can't simply exit the script as I sometimes run it in the main shell
# Don't know if that's a good idea but it works
if [ "$failure" = false ] 
then
    if [ ! "$2" = "s" ] 
    then
        explorer .
    fi
fi

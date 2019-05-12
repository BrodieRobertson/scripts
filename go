#!/bin/sh -

onlyInTerminal=$2
failure=false

help() {
    echo "Add -t after the parameter to only open the route in the terminal"
    echo -e "Supported destinations parameters\n - ani = ~/Videos/Anime \n - desk = ~/desktop \n - doc = ~/documents \n - h = ~ \n - pic = ~/pictures \n - sh = ~/scripts \n - tb = ~/Documents/Textbooks/3rd Year \n - uni = ~/Documents/Uni/3rd Year"
}

route() {
    # Case statement over my supported folders
    case $1 in
        "ani") cd ~/Videos/Anime ;;
        "desk") cd ~/desktop ;;
        "doc") cd ~/documents ;;
        "h") cd ~ ;;
        "pic") cd ~/pictures ;;
        "sh") cd ~/scripts ;;
        "tb") cd ~/Documents/Textbooks/"3rd Year" ;;
        "uni") cd ~/Documents/Uni/"3rd Year" ;;
        *) 
            echo "Unsupported destination"
            failure=true ;;
    esac

    # Check for failure
    # Can't simply exit the script as I sometimes run it in the main shell
    # Don't know if that's a good idea but it works
    if [ "$failure" = false ] 
    then
        if [ ! "$2" = "-t" ] 
        then
            explorer .
        fi
    fi
}

# Check if a parameter was entered
if [ -z "$1" ] 
then
    echo "Type go -h for help"
elif [ "$1" = "-h" ] 
then
    help
else
    route $1 $2
fi
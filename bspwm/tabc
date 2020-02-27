#!/bin/sh

# Usage:
# tabc.sh <tabbedid-id> <command>
# Commands:
#    add <window-id> 	- Add window to tabbedid
#    remove <window-id> - Remove window from tabbedid
#    list				- List all clients of tabbedid

#
# Functions
#

# Get wid of root window
get_root_wid() {
	xwininfo -root | awk '/Window id:/{print $4}'
}

# Get children of tabbed
get_clients() {
	id=$1
	xwininfo -id "$id" -children | sed -n '/[0-9]\+ \(child\|children\):/,$s/ \+\(0x[0-9a-z]\+\).*/\1/p'
}

# Get class of a wid
get_class() {
	id=$1
  if [ -z "$id" ]; then
    echo ""
  else
	  xprop -id "$id" | sed -n '/WM_CLASS/s/.*, "\(.*\)"/\1/p'
  fi

}

#
# Main Program
#

cmd=$1

case $cmd in
	add)
	  wid=$3
    tabbedid=$(bspc query -N -n "$2")

    if [ -z "$tabbedid" ] || [ "$(get_class "$tabbedid")" != "tabbed" ]; then
      tabbed -c &
      bspc subscribe node_add | while read -r add
      do
        id=$(echo "$add" | awk '{print $5}')
        class="$(get_class "$id")"
        if [ "$class" = "tabbed" ]; then
          tabbedid=$id
	  	    xdotool windowreparent "$wid" "$tabbedid"
          exit 0
        fi
      done
	  	  xdotool windowreparent "$wid" "$tabbedid"
    else
	  	xdotool windowreparent "$wid" "$tabbedid"
    fi
		;;
	remove)
		wid=$2
    tabbedid=$(bspc query -N -n focused)
		xdotool windowreparent "$wid" "$(get_root_wid)"
		;;
	list)
    tabbedid=$2
		get_clients "$tabbedid"
		;;
esac

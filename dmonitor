#!/bin/sh
# Toggle on/off an thirdal monitor, HDMI does not support audio over HDMI as it's pretending that it's DVI

main="$1"
second="$2"
third="$3"

extramonitor() {
  case "$1" in
      "disconnect") xrandr --output "$third" --off --output "$second" --off --output "$main" --auto ;;
      "main+4kthird") xrandr --output "$third" --mode 3840x2160 && xrandr --output "$main" --auto --output "$third" --right-of "$main" ;;
      "main+second") xrandr --output "$second" --mode 1920x1080 && xrandr --output "$main" --auto --output "$second" --left-of "$main" ;;
      "main+third") xrandr --output "$third" --mode 1920x1080 && xrandr --output "$main" --auto --output "$third" --right-of "$main" ;;
      "allthree") xrandr --output "$second" --mode 1920x1080 && xrandr --output "$third" --mode 1920x1080 && xrandr --output "$main" --auto --output "$second" --left-of "$main" --output "$third" --right-of "$main";;
      "duplicate") xrandr --output "$third" --set audio force-dvi --mode 1920x1080 && xrandr --output "$main" --auto --output "$third" --same-as "$main" ;;
      *) notify-send "Multi Monitor" "Unknown Operation" ;;
  esac
}

selection=$(printf "allthree\nmain+4kthird\nmain+third\nmain+second\ndisconnect\nduplicate" | dmenu -i -p "Monitor Configuration")
extramonitor "$selection" && fixdualhead -pd "1 2 3 4 5 6 7" -p "$main" -s "$second" -sd "8 9 0"

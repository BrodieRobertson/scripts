# Script Descriptions

## ALSA Scripts

### alsavolctrl

Changes the volume of tracks in alsa

#### Dependencies

+ amixer
+ i3volume

## BSPWM Scripts

### bspfullscreen

Simple script to toggle a node to fullscreen mode in bspwm

#### Dependencies

+ bspc
+ bsphide
+ bspunhide

### bsphide

Simple script to hide all the nodes on a desktop in bspwm

#### Dependencies

+ bspc
+ pgrep
+ polybar (optional)

### bspunhide

Simple script to show all the nodes on a desktop in bspwm

#### Dependencies

+ bspc
+ pgrep
+ polybar (optional)

### tabc

Adds/removes a node into/out of an instance of tabbed, to allow for tabbing in bspwm

Modified version of [this script](https://gist.github.com/jpentland/468a42c172eb607bb950f5d00606312c)

#### Dependencies

+ bspc
+ xdotool
+ xprop
+ xwininfo

## i3 Scripts

### i3battery

Shows the battery percentage formatted to show in i3blocks

#### Dependencies

+ acpi
+ perl

### i3cpu

Shows the cpu usage formatted to show in i3blocks

#### Dependencies

+ mpstat
+ perl

### i3disk

Shows the disk usage formatted to show in i3blocks

#### Dependencies

+ df

### i3ip

Shows the ip address of the computer formatted to show in i3blocks

#### Dependencies

+ inet
+ ip
+ xclip

### i3memory

Shows the memory usage formatted to show in i3blocks

#### Dependencies

+ mem

### i3speedtest

Shows the network performance formatted to show in i3blocks

#### Dependencies

+ speedtest-cli

### i3temp

Shows the cpu temperate formatted to show in i3blocks

#### Dependencies

+ acpi

### i3torrents

Shows the torrents available in transmission formatted to show in i3blocks

#### Dependencies

+ transmission-remote

### i3volume

Shows the volume for alsa formatted to show in i3blocks

#### Dependencies

+ amixer

### i3weather

Shows the current weather in Adelaide formatted to show in i3blocks

#### Dependencies

+ curl

### i3wifi

Shows the current wifi connectivity level formatted to show in i3blocks

## Lemonbar Scripts

### launchlemon

Launches an instance of lemonbar

#### Dependencies

+ lemonbar
+ lemonconfig

### lemonconfig

Outputs a configuration for lemonbar

#### Dependencies

+ acpi
+ bspc
+ pulsevolume
+ xdotool

## Lf Scripts

### preview

Preview script built for use with lf and fzf

#### Dependencies

+ glow (markdown)
+ highlight
+ mediainfo (png, jpg, mp4, etc)
+ pdftotext (pdf)
+ pistol
+ tar (tar)
+ unrar (rar)
+ zipinfo (zip)

## Polybar Scripts

### launchpolybar

Launches an instance of polybar

#### Dependencies

+ killall
+ pgrep
+ polybar

### polybattery

Shows battery percentage formatted to be shown in polybar

#### Dependencies

+ acpi

### polycpu

Shows the cpu usage formatted to be shown in polybar

#### Dependencies

+ perl
+ mpstat

### polypulsevolume

Shows the pulse volume formatted to be shown in polybar

#### Dependencies

+ pulsedevices

### polytemp

Shows the temperature of the CPU formatted to be shown in polybar

#### Dependencies

+ acpi

### reloadpolybar

Reloads an instance of polybar or launches it if it's not already running

#### Dependencies

+ pidof
+ polybar

## Pulse Audio Scripts

### pulsedevices

Lists out the pulse devices and volume data

#### Dependencies

+ pactl

### pulsevolctrl

Modifies the volumes level of a pulse sink

#### Dependencies

+ pactl

## Transmission Scripts

### notifytorrents

Hacky script to list out all the torrents in transmission

#### Dependencies

+ pgrep
+ notify-send
+ transmission-remote

### tordore

Sends a notification that a torrent has completed in transmission

#### Dependencies

+ polybar (bar)
+ notify-send

### transadd

Sends a notification that a torrent has been added to transmission

#### Dependencies

+ pgrep
+ polybar (bar)
+ transmission-remote

### transclr

Clears out all completed torrents from transmission

#### Dependencies

+ transmission-remote
+ pidof
+ polybar (bar)

### transrss

Opens transmission-rss in the background

#### Dependencies

+ transmission-rss

## Other Scripts

### comp

General handler script for compiling various file types

### Dependencies

+ readlink
+ pandoc
+ php

### crf

Generates a template react file

### dfm

Dmenu based file manager

Sourced from [this repo](https://github.com/huijunchen9260/dmenufm)

### dfm-ext

Extraction script for dmenufm

Sourced from [this repo](https://github.com/huijunchen9260/dmenufm)

### dlfile

Provides the ability to download a file by dropping it into a window

#### Dependencies

+ curl
+ dragon

### dman

Searches the man page data for an entry entered from a dmenu prompt

#### Dependencies

+ dmenu

### encode

Performs HTML encoding on a string, there's probably a better way to do this

### extramonitor

Toggle on/off an external monitor and attempt to fix overscan issues

#### Dependencies

+ notify-send
+ xrandr

### fixcam

Sets my C920 with my webcam settings

#### Dependencies

+ v4l2-ctl

### importandroid

Imports all the files of a specified type from an android device between
a specific time frame

#### Dependencies

+ notify-send
+ xargs

### keys

Uses xev to output the codes of the keys pressed

Sourced from the [arch wiki](https://wiki.archlinux.org/index.php/Keyboard_input#Identifying_keycodes_in_Xorg)

#### Dependencies

+ xev

### killandnotify

Kills an application and sends a notification saying it was killed

#### Dependencies

+ notify-send
+ pgrep

### mepapemaker.sh

Turns any wallpaper into an arch wallpaper

Source from [this repo](https://gitlab.com/SillyPill/arch-pape-maker)

### mkscript

Generates a new script file in my scripts directory

### mntandroid

Handler script for mounting and unmounting an android device

#### Dependencies

+ simple-mtpfs
+ fusermount

### mntandroid

Mounts an android device to the cell directory

#### Dependencies

+ fusermount
+ simple-mtpfs

### multimonitor

Wrapper script for extramonitor to select the way mode to use the extramonitor
in

#### Dependencies

+ dmenu
+ xargs

### nodechildren

Lists the children of window

#### Dependencies

+ xwininfo

### nodeclass

Prints out the window class of a window

#### Dependencies

+ xprop

### openterminalin

Cd into a directory using dmenufm

#### Dependencies

+ dfm

### opnbrow

Handler script for opening different browsers

#### Dependencies

+ firefox

### opout

General handler script for opening the output for a file

### pfetch

POSIX compliant version of neofetch
Source from [this repo](https://github.com/dylanaraps/pfetch)

### prompt

Simple confirmation prompt using dmenu

#### Dependencies

+ dmenu

### pyshell

Opens a python shell in a prompt, to run simple scripts

#### Dependencies

+ dmenu
+ python
+ notify-send
+ xargs

### rootid

Outputs the id of the root window

#### Dependencies

+ xwininfo

### sch

Browser independent search engine querying

#### Dependencies

+ dmenu
+ opnbrow

### screenshot

Handler script to take a screenshot with maim

### stabmux

Wrapper script to open up st in tabbed and tmux

#### Dependencies

+ st
+ tabbed
+ tmux

### tabdmenu

Provides a simple interface through dmenu to open common tabbing applications

#### Dependencies

+ nodeclass
+ tabbed
+ xdotool

### toggleprogram

Provides the ability to toggle any program

#### Dependencies

+ killandnotify
+ pgrep

### toggletouch

Toggles my laptops touchpad

#### Dependencies

+ notify-send
+ xargs
+ xinput

### updatepackages

Opens up pacman in a terminal to update my packages

#### Dependencies

+ pacman

### view

Provides a method to generate read only versions of files

#### Dependencies

+ libre

### virmon

Hacky script to test out virtual monitors

#### Dependencies

+ xrandr


#!/bin/sh
# Script to reload an instance of polybar
if [ -z "$(pidof polybar)" ]; then
  launchpolybar &
else
  polybar-msg cmd restart
fi

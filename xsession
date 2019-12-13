#!/bin/bash

xrandr --output HDMI-0 --rotate left --left-of DP-0
xbindkeys
picom &
sleep 2s
hsetroot


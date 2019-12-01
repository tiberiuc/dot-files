#!/bin/bash

xrandr --output HDMI-0 --rotate left
xbindkeys
picom &
sleep 2s
hsetroot


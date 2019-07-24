#!/bin/bash
xrandr --output HDMI-1 --set underscan on --set "underscan vborder" 40 --set "underscan hborder" 60
xset -dpms s off s noblank s 0 0 s noexpose

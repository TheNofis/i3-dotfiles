#!/bin/sh

#MONITOR SETTINGS
xrandr --output HDMI-0 --mode 1920x1080 --pos -1920x0 \
--output DP-4 --mode 1920x1080 --rate 180 --pos 0x0 \
--output DVI-D-0 --mode 1920x1080 --pos 1920x-215 --rotate right
# xrandr --output DP-4 --mode 1920x1080 --rate 180 --pos 0x0 \

# SET WALLPAPER
# feh --bg-fill ~/Wallpaper/1.jpg
# feh --bg-fill ~/Wallpaper/6.jpg ~/Wallpaper/2.jpg ~/Wallpaper/2.jpg
feh --randomize --bg-fill ~/Wallpaper/*.jpg

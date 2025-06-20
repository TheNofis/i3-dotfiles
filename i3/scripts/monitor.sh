#!/bin/sh

#MONITOR SETTINGS
xrandr --output HDMI-0 --mode 1920x1080 --left-of DP-0 \
  --output DP-0 --primary --mode 1920x1080 --rate 180 \
  --output DVI-D-0 --mode 1920x1080 --right-of DP-0 --rotate right
# xrandr --output DP-4 --mode 1920x1080 --rate 180 --pos 0x0 \

# SET WALLPAPER
# feh --bg-fill ~/Wallpaper/1.jpg
# feh --bg-fill ~/Wallpaper/6.jpg ~/Wallpaper/2.jpg ~/Wallpaper/2.jpg
feh --randomize --bg-fill ~/Wallpaper/*.jpg
xcompmgr -c &

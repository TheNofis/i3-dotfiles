#!/bin/sh

#MONITOR SETTINGS
xrandr --output HDMI-0 --mode 1920x1080 --left-of DP-4 \
  --output DP-4 --primary --mode 1920x1080 --rate 200 \
  --output DVI-D-0 --mode 1920x1080 --right-of DP-4 --rotate right
# xrandr --output DP-4 --mode 1920x1080 --rate 180 --pos 0x0 \

# SET WALLPAPER
# feh --bg-fill ~/Wallpaper/1.jpg
# feh --bg-fill ~/Wallpaper/6.jpg ~/Wallpaper/2.jpg ~/Wallpaper/2.jpg
feh --randomize --bg-fill ~/Wallpaper/*.jpg

# Desktop clock
conky -c ~/.config/conky/conky.conf -m 0 &
conky -c ~/.config/conky/conky.conf -m 1 &
conky -c ~/.config/conky/conky.conf -m 2 &
# xcompmgr -c -C -t-5 -l-5 -r4.2 -o.55 &

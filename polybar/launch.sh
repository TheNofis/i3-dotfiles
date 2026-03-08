#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Config
BAR_NAME=main
BAR_CONFIG=$HOME/.config/polybar/config.ini

PRIMARY=$(xrandr --query | grep " connected" | grep "primary" | cut -d" " -f1)
OTHERS=$(xrandr --query | grep " connected" | grep -v "primary" | cut -d" " -f1)

# Launch on primary monitor
MONITOR=$PRIMARY polybar --reload -c $BAR_CONFIG $BAR_NAME &
sleep 1

# Launch on all other monitors
for m in $OTHERS; do
 MONITOR=$m polybar --reload -c $BAR_CONFIG $BAR_NAME &
done

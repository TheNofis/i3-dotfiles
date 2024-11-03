#!/bin/bash

# increase key speed via rate change
xset r rate 300 30
# Map the caps lock key to ctrl
setxkbmap -layout us,ru
setxkbmap -option 'grp:alt_shift_toggle'
xinput --set-prop 11 'libinput Accel Profile Enabled' 0, 1
# But when it is pressed only once, treat
# it as escape

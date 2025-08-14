#!/bin/bash

# ID твоих устройств (узнай через wpctl status)
HEADSET=alsa_output.usb-Logitech_G_series_G435_Wireless_Gaming_Headset_202105190004-00.analog-stereo
BUILTIN=alsa_output.pci-0000_00_1f.3.analog-stereo

# Определяем текущее default устройство
CURRENT=$(pactl get-default-sink)

dunstify -a "Switch Audio" "Switched to $(pactl get-default-sink)"

if [[ "$CURRENT" == "$HEADSET" ]]; then
    echo "󰋋 Speakers"
else
    echo "󰋋 Headset"
fi


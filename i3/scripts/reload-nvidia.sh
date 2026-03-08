# /bin/bash

doas modprobe -r nvidia_drm nvidia_modeset nvidia_uvm nvidia

doas modprobe nvidia
doas modprobe nvidia_uvm
doas modprobe nvidia_modeset
doas modprobe nvidia_drm

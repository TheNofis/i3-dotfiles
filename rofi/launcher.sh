#!/usr/bin/env bash

dir="$HOME/.config/rofi"
theme='style-1'

## Run
rofi \
    -show drun \
    -run-command "${dir}/scripts/web-search.sh {cmd}" \
    -theme ${dir}/styles/${theme}.rasi

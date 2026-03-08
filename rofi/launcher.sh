#!/usr/bin/env bash

dir="$HOME/.config/rofi"
theme='everforest'

## Run
rofi \
    -show drun \
    -theme ${dir}/styles/${theme}.rasi \
    -run-command "${dir}/scripts/web-search.sh {cmd}" \

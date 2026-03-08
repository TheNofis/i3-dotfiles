#!/bin/bash

# Получаем координаты и размеры выделенной области
geometry=$(slop -f "%x,%y %w,%h")
read -r -a geometry_array <<< "$geometry"
x=${geometry_array[0]}
y=${geometry_array[1]}
width=${geometry_array[2]}
height=${geometry_array[3]}

# Сохраняем скриншот
scrot -q 100 -o /tmp/screenshot.png -a "$x,$y,$width,$height"
# Копируем скриншот в буфер обмена
xclip -selection clipboard -t image/png -i /tmp/screenshot.png

dunstify "Скриншот сохранен в /tmp/screenshot.png и скопирован в буфер обмена."


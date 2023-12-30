#!/bin/zsh

# import pywal colors
source "$HOME/.cache/wal/colors.sh"

# set pywal colors
swaylock \
    --font Comfortaa \
    --clock \
    --timestr "%H:%M" \
    --datestr %d.%m.%y \
    --indicator-radius 300 \
    --indicator-thickness 7 \
    --indicator-caps-lock \
    --image ~/.cache/wallpaper \
    --grace 3 \
    --fade-in 2 \
    --indicator \
    --effect-scale 0.5 \
    --effect-blur 2x1 \
    --effect-scale 2 \
    --text-color $foreground \
    --text-ver-color $foreground \
    --ring-color ${background}e6 \
    --ring-clear-color ${background}e6 \
    --ring-ver-color ${background}e6 \
    --ring-wrong-color ${background}e6 \
    --inside-color ${background}e6 \
    --inside-ver-color ${background}e6 \
    --line-color ${background}e6 \
    --key-hl-color ${color1}e6 \
    --bs-hl-color ${color1}e6 \
    --daemonize

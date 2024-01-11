#!/bin/sh

new_wallpaper=$1
cache_file=$HOME/.cache/wallpaper
wallpaper_dir=~/pictures/wallpaper

if [ $# -eq 1 ]; 
then
    wallpaper=$new_wallpaper
    cp $wallpaper $cache_file
else
    wallpaper=${wallpaper_dir}/$(ls $wallpaper_dir -1 | shuf -n 1)
    cp $wallpaper $cache_file
fi

swww img $wallpaper \
    --transition-bezier .43,1.19,1,.4 \
    --transition-fps=60 \
    --transition-type=any \
    --transition-duration=1

killall waybar

wal -q -i $wallpaper

source ~/.cache/wal/colors.sh
pywalfox update
waybar -c ~/.config/waybar/config -s ~/.config/waybar/styles.css &

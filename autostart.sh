#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#Find out your monitor name with xrandr or arandr (save and you get this line)
#xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
#xrandr --output DP2 --primary --mode 1920x1080 --rate 60.00 --output LVDS1 --off &
#xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
xrandr --output eDP-1 --primary --mode 1920x1080 --pos 900x520 --rotate normal  --output HDMI-2 --mode 1600x900 --pos 0x0 --rotate left --left-of eDP-1 --output VIRTUAL1 --off
#xrandr --output HDMI-2 --auto --rotate left --pos 0x0 --output eDP-1 --pos 900x520 


$HOME/.config/bspwm/scripts/qq_notify.sh &
#$HOME/qq_notify.sh &

#change your keyboard if you need it
#setxkbmap -layout be

#Some ways to set your wallpaper besides variety or nitrogen
#feh --bg-scale ~/.config/bspwm/wall.png &
#feh --randomize --bg-fill ~/Képek/*
#feh --randomize --bg-fill ~/Dropbox/Apps/Desktoppr/*

xsetroot -cursor_name left_ptr &
sxhkd &
wmname LG3D &
run  xflux -l 51°25′35.81″ -g 128°48′13.36 &
run fcitx &

#run variety &
#run nm-applet &
#run pamac-tray &
#run xfce4-power-manager &
numlockx on &
blueberry-tray &

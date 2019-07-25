#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#monitor with xrandr 
xrandr --output eDP-1 --primary --mode 1920x1080 --pos 900x520 --rotate normal  --output HDMI-2 --mode 1600x900 --pos 0x0 --rotate left --right-of eDP-1 --output VIRTUAL1 --off



$HOME/.config/polybar/launch.sh &
$HOME/.config/bspwm/scripts/qq_notify.sh &

#change your keyboard if you need it
#setxkbmap -layout be

xsetroot -cursor_name left_ptr &
sxhkd &
wmname LG3D &
run  xflux -l 51°25′35.81″ -g 128°48′13.36 &
run fcitx &
flameshot &
copyq &
nm-applet &
compton &
goldendict &

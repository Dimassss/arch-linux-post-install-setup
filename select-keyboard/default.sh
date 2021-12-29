#!/bin/sh

h=$(cat home.variable)
c=$h/home/utils/select-keyboard

sudo cp $c/res/00-keyboard.conf /etc/X11/xorg.conf.d/
setxkbmap -model pc105 -layout pl,ru,ua -option grp:lwin_toggle

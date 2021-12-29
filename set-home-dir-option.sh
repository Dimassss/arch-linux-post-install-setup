#!/bin/bash

h=$HOME/

re='[a-zA-Z0-9./]+/$'
if [[ $h =~ $re ]]
then
	h=${h::-1}
fi

echo $h>home.variable
echo $h>select-keyboard/home.variable
echo $h>select-urxvt-theme/home.variable
echo $h>select-wallpaper/home.variable
echo $h>select-xresources/home.variable
echo $h>i3/home.variable

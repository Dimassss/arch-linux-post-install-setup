#!/bin/sh

h=$(cat home.variable)
c=$h/home/utils/select-urxvt-theme

sh $c/set-theme.sh $(cat $c/options/selected)

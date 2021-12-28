#!/bin/sh

h=${HOME::-1}
c=$h/home/utils/select-urxvt-theme

sh $c/set-theme.sh $(cat $c/options/selected)

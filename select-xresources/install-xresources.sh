#!/bin/bash

h=$(cat home.variable)
c=$h/home/utils/select-xresources

cp $c/list/$(cat $c/options/selected) $c/../my_config/.Xresources
bash $c/Xresources-gen.sh
cp $c/Xresources $h/.Xresources
xrdb $h/.Xresources

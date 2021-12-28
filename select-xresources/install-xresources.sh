#!/bin/bash

h=${HOME::-1}
c=$h/home/utils/select-xresources

cp $c/list/$(cat $c/options/selected) $c/../my_config/.Xresources
bash $c/Xresources-gen.sh
cp $c/Xresources $h/.Xresources
xrdb $h/.Xresources

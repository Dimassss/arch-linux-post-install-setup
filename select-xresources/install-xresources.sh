#!/bin/bash

cp ./list/$(cat ./options/selected) ../my_config/.Xresources
bash ./Xresources-gen.sh
cp Xresources $HOME/.Xresources
xrdb $HOME/.Xresources

#!/bin/bash

h=$(cat home.variable)
c=$h/home/utils/select-xresources

echo "#include \"$c/../my_config/.Xresources\"" > $c/Xresources
echo "#include \"$c/../my_config/.urxvt.colorscheme.Xresources\"" >> $c/Xresources

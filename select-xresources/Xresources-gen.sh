#!/bin/bash

h=${HOME::-1}
c=$h/home/utils/select-xresources

echo "#include \"$c/../my_config/.Xresources\"" > $c/Xresources
echo "#include \"$c/../my_config/.urxvt.colorscheme.Xresources\"" >> $c/Xresources

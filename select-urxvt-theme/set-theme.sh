#!/bin/bash

h=${HOME::-1}
c=$h/home/utils/select-urxvt-theme

theme=$1

if [[ $(sh $c/../lib/is/number.sh $theme) ]]
then
	readarray -t themes <<< $(cat $c/best-themes.txt);
	
	if ! [[ ${themes[$theme]} == '' ]]
	then
		theme=${themes[$theme]}
	fi
fi

theme_file=$c/themes/$theme.Xresources

if test -f "$theme_file"
then
	echo Set color scheme: $theme;
	echo $theme > $c/options/selected
	cp $theme_file $c/../my_config/.urxvt.colorscheme.Xresources
	xrdb $h/.Xresources
else
	echo This color scheme doesnt exists;
	exit 1
fi

exit 0





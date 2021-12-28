#!/bin/bash

theme=$1

if [[ $(sh ../lib/is/number.sh $theme) ]]
then
	readarray -t themes <<< $(cat best-themes.txt);
	
	if ! [[ ${themes[$theme]} == '' ]]
	then
		theme=${themes[$theme]}
	fi
fi

theme_file=./themes/$theme.Xresources

if test -f "$theme_file"
then
	echo Set color scheme: $theme;
	echo $theme > ./options/selected
	cp $theme_file ../my_config/.urxvt.colorscheme.Xresources
	xrdb $HOME/.Xresources
else
	echo This color scheme doesnt exists;
	exit 1
fi

exit 0





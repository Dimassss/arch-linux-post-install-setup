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

theme=./themes/$theme.Xresources

if test -f "$theme"
then
	echo Preview color scheme: $theme;

	f=.urxvt.colorscheme.Xresources
	ex=$HOME/home/utils/select-urxvt-theme/example-code/hello

	mv ../my_config/$f ../my_config/$f~
	cp $theme ../my_config/$f
	xrdb $HOME/.Xresources

	urxvt -e sh -c "cd; neofetch; ls -la; sleep 1; vim $ex.html; vim $ex.js; vim $ex.css";

	mv ../my_config/$f~ ../my_config/$f
	xrdb $HOME/.Xresources
else
	echo This color scheme doesnt exists;
	exit 1
fi

exit 0





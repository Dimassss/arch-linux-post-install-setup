#!/bin/bash

h=$(cat home.variable)
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

theme_dir=$c/themes/$theme.Xresources

if test -f "$theme_dir"
then
	echo Preview color scheme: $theme;

	f=.urxvt.colorscheme.Xresources
	ex=$c/example-code/hello

	mv $c/../my_config/$f $c/../my_config/$f~
	cp $theme_dir $c/../my_config/$f
	xrdb $h/.Xresources
	echo $h/.Xresources

	urxvt -e sh -c "cd; neofetch; ls -la; sleep 1; vim $ex.html; vim $ex.js; vim $ex.css";

	mv $c/../my_config/$f~ $c/../my_config/$f
	xrdb $h/.Xresources
else
	echo This color scheme doesnt exists;
	exit 1
fi

exit 0





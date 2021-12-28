#!/bin/sh

h=${HOME::-1}
c=$h/home/utils/select-urxvt-theme

for theme in $(ls $c/themes)
do
	bash $c/preview-scheme.sh ${theme::-11};
	echo ============${theme::-11}=============;
	break;
done

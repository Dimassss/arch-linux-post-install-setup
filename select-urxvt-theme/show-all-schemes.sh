#!/bin/sh

for theme in $(ls ./themes)
do
	bash ./preview-scheme.sh ${theme::-11};
	echo ============${theme::-11}=============;
	break;
done

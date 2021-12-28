#!/bin/sh

str=$1

is_number () {
	re='^[0-9]+$'
	if [[ $str =~ $re ]]
	then
		echo true;
	else
		echo false;	
	fi
}


is_number

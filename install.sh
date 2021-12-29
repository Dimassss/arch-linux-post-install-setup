#!/bin/sh

sh set-home-dir-option.sh

h=$(cat home.variable)

if ! [[ -d $h/home ]]
then
	echo create "$h/home" dir
	mkdir $h/home;
fi

if ! [[ -d $h/home/downloads ]]
then
	echo create "$h/home/downloads" dir
	mkdir $h/home/downloads
fi

if ! [[ -d $h/home/draft ]]
then
	echo create "$h/home/draft" dir
	mkdir $h/home/draft
fi

if ! [[ -d $h/home/utils ]]
then
	echo create "$h/home/utils" dir
	mkdir $h/home/utils
fi

utils=$h/home/utils
cp -r ./* $utils/

#basic programs install
#sudo pacman -Sy xorg xorg-xinit xorg-setxkbmap ttf-dejavu 
#sudo pacman -Sy nvidia nvidia-utils xf86-video-intel mesa 
#sudo pacman -Sy alsa-utils rxvt-unicode chromium base-devel
#sudo pacman -Sy chromium git python3 r rar gzip telegram-desktop
#sudo pacman -Sy xclip zathura zathura-pdf-poppler feh

#i3 install
#sudo pacman -Sy i3 i3-gaps i3status i3blocks dmenu xterm

startx &

sh $utils/install.config.sh


#removing this dir if not /home/utils
cur_dir=$PWD

if ! [ $PWD == "$h/home/utils"  ]
then
	echo removing $cur_dir 
	cd ..
	#rm -rf $cur_dir
fi




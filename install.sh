#!/bin/sh

if ! [ -d $HOME/home ]
then
	mkdir $HOME/home;
fi

if ! [ -d $HOME/home/downloads]
then
	mkdir $HOME/home/downloads
fi

if ! [ -d $HOME/home/draft]
then
	mkdir $HOME/home/draft
fi

if ! [ -d $HOME/home/utils]
then
	mkdir $HOME/home/utils
fi

utils=$HOME/home/utils
cp ./* $utils/
sh $utils/install.config.sh

#basic programs install
sudo pacman -S xorg xorg-init ttf-dejavu nvidia nvidia-utils xf86-video-intel mesa alsa-utils urxvt chromium base-devel

#i3 install
sudo pacman -S i3 i3-gaps i3status i3blocks dmenu xterm
sh $utils/i3/install.sh

cur_dir=$PWD

if ! [ $PWD == "$HOME/home/utils"  ]
then
	cd ..
	rm -rf $PWD
fi




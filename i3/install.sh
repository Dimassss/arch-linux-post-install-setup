#~/bin/sh

h=${HOME}
c=$h/home/utils/i3

#cp ./res/xinitrc $HOME/.xinitrc

if ! [ -d $h/.config ]
then
	mkdir $h/.config
fi

if ! [ -d $h/.config/i3 ]
then
	mkdir $h/.config/i3
fi

cp $c/res/config $h/.config/i3/





#! /usr/bin/bash

MAKE_DEPS=0
POST_DEPS=0

function show_help(){
   echo "-?: show this list"
   echo "-m: install dependencies for building with make too"
   echo "-p: install dependencies for the 'post' make target too"
   exit
}

# parse args
while getopts hmp flag
do
    case "${flag}" in
        h) show_help;;
        m) MAKE_DEPS=1;;
        p) POST_DEPS=1;;
    esac
done

echo "welcome to the open source meme dependency installer. idk why i made this installer but oh well."
echo "you may be asked for your password. this is so that the package manager can install the dependencies."
read -p "what package manager do you want to use? (case sensitive): " pkgmgr
echo "Installing GIMP."
if [ $pkgmgr == "pacman" ]; then
	sudo $pkgmgr -S gimp
else
	sudo $pkgmgr install gimp
fi

if [ $MAKE_DEPS == 1 ] || [ $POST_DEPS == 1 ]; then
	if [ -f "/etc/arch-release" ]; then
		echo "Installing ImageMagick."
		sudo pacman -S imagemagick
	else
		echo "Installing ImageMagick using imei."
		git clone https://github.com/SoftCreatR/imei /tmp/imei
		cd /tmp/imei
		chmod +x imei.sh
		sudo ./imei.sh
		rm -rf /tmp/imei
	fi
fi

if [ $POST_DEPS == 1 ]; then
	echo "Installing python3 and pip3."
	if [ -f "/etc/arch-release" ]; then
		if [ $pkgmgr == "pacman" ]; then
			sudo $pkgmgr -S python python-pip
		else
			sudo $pkgmgr install python python-pip
		fi
	else
		if [ $pkgmgr == "pacman" ]; then
			sudo $pkgmgr -S python3 python3-pip
		else
			sudo $pkgmgr install python3 python3-pip
		fi
	fi
	echo "Installing praw."
	pip3 install praw
fi

echo "Dependencies successfully installed."

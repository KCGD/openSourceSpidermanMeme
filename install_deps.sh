#! /usr/bin/bash
echo "welcome to the open source meme dependency installer. idk why i made this installer but oh well."
echo "you may be asked for your password. this is so that the package manager can install GIMP."
read -p "what package manager do you want to use? (case sensitive): " pkgmgr
echo "Installing GIMP."
if [ $pkgmgr == "pacman" ]; then
	sudo $pkgmgr -S gimp
else
	sudo $pkgmgr install gimp
fi

echo "GIMP Successfully installed."

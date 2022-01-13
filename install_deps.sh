#! /usr/bin/bash
echo "welcome to the open source meme dependency installer. idk why i made this installer but oh well."
read -p "what package manager do you want to use? (case sensitive): " pkgmgr
echo "Installing GIMP."
if [ $pkgmgr -eq "pacman" ] then
	$pkgmgr -S gimp
else
	$pkgmgr install gimp
fi

echo "GIMP Successfully installed."

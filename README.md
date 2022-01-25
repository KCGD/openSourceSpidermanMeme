# Open source spiderman meme

Haha spiderman make a presentation lol

## Install gimp

This meme requires gimp, install through install_deps.sh

```bash
chmod +x install_deps.sh && ./install_deps.sh
```
Alternativley, Install gimp through flatpak

```bash
wget "https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref"
```
```bash
flatpak install org.gimp.GIMP.flatpakref
```
Load the meme in GIMP and edit however you wish.

## Build the meme using GIMP

Clone the repository and load the meme into gimp
```bash
git clone https://github.com/KCGD/openSourceSpidermanMeme.git
cd openSourceSpidermanMeme
```

Open the meme by going in your cmdline and typing `gimp open\ source\ meme.xcf`
Export your changes via File -> Export -> Choose Location -> Save

## Build the meme using make

Install ImageMagick 7:
```bash
chmod +x install_deps.sh && ./install_deps.sh -m
```
This installs ImageMagick 7 using pacman on Arch and derivatives or [imei](https://github.com/SoftCreatR/imei) on other distros.

Then, build the meme using make:
```bash
make # or make meme
```

Or, install the meme:
```bash
make install
```
This builds the meme and copies it to `~/Pictures/Memes/spiderman-meme.png`.

## Post to Reddit

First, install python3 and pip3 (if they aren't installed already). Then, install praw:
```bash
pip3 install praw
```
Or use the installer:
```bash
chmod +x install_deps.sh && ./install_deps.sh -p
```
Then you can create the post using make:
```bash
make post
```
By default this posts the meme to r/linuxmemes. To post to a different subreddit set the SUBREDDIT variable:
```bash
make post SUBREDDIT=windowsmemes # posts to r/windowsmemes
```

## License
[MIT](https://choosealicense.com/licenses/mit/)

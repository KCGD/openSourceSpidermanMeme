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
## Build the meme

Clone the repository and load the meme into gimp
```bash
git clone https://github.com/KCGD/openSourceSpidermanMeme.git
cd openSourceSpidermanMeme
```

Open the meme by going in your cmdline and typing `gimp open\ source\ meme.xcf`
Export your changes via File -> Export -> Choose Location -> Save

Alternatively install ImageMagick 7 and build the meme using make:
```bash
make
```

## License
[MIT](https://choosealicense.com/licenses/mit/)

meme:
	@if [ ! -d "Build" ]; then mkdir "Build"; fi

	convert -flatten open\ source\ meme.xcf Build/open_source_meme.png
	echo Meme compiled successfully.

post: meme
	python3 post_meme.py

install: meme
	@if [ ! -d "${HOME}/Pictures" ]; then mkdir "${HOME}/Pictures"; fi
	@if [ ! -d "${HOME}/Pictures/Memes" ]; then mkdir "${HOME}/Pictures/Memes"; fi
	cp Build/open_source_meme.png ${HOME}/Pictures/Memes/spiderman-meme.png

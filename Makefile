meme:
	@if [ ! -d "Build" ]; then mkdir "Build"; fi

	convert -flatten open\ source\ meme.xcf Build/open_source_meme.png
	echo Meme compiled successfully.

post: meme
	python3 post_meme.py

install: meme
	@if [ ! -d "~/Pictures" ]; then mkdir "~/Pictures"; fi
	@if [ ! -d "~/Pictures/Memes" ]; then mkdir "~/Pictures/Memes"; fi
	cp Build/open_source_meme.png ~/Pictures/Memes/spiderman-meme.png

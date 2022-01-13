meme:
	@if [ ! -d "Build" ]; then mkdir "Build"; fi

	convert -flatten open\ source\ meme.xcf Build/open_source_meme.png
	echo Meme compiled successfully.

post: meme
	python3 post_meme.py

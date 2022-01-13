meme:
	convert -flatten open\ source\ meme.xcf open_source_meme.png
	echo Meme compiled successfully.

post: meme
	python3 post_meme.py

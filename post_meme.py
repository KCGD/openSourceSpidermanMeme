import praw
import os

pus = ""
secret = ""

def setupSecretAndPUS():
	global pus, secret
	print("""
To post on Reddit you have to create an app.

1. Go to https://www.reddit.com/prefs/apps and click "create another app..." at the bottom.

2. Fill in the required details, make sure to select script — and click create app.

3. Enter the text under "personal use script" (app ID) and secret token here.
	""")
	pus = input("App ID: ")
	secret = input("Secret: ")

def login():
	u = input("Username: ")
	p = input("Password: ")
	reddit = praw.Reddit(
		client_id=pus,
		client_secret=secret,
		password=p,
		user_agent="OpenMeme/1.0",
		username=u
	)
	reddit.validate_on_submit=True
	post(reddit)

def post(reddit):
	title = input("Post title:")
	sub = os.environ.get("SUBREDDIT")
	if sub is None:
		sub = "linuxmemes"
	print(f"Posting meme to {sub}...")
	reddit.subreddit(sub).submit_image(title, "open_source_meme.png")
	print("Meme has been posted.")

print()

if __name__ == "__main__":
	setupSecretAndPUS()
	login()
	
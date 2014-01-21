from canto.extra import *
import os

# Handlers when in Linux console or xterm
if os.getenv("TERM") == "linux":
	link_handler("elinks \"%u\"", text=True)
	image_handler("firefox \"%u\"", text=True, fetch=True)
else:
	link_handler("google-chrome \"%u\"")
	image_handler("feh \"%u\"", fetch=True)

keys['/'] = search_filter
keys['y'] = yank

add("http://news.ycombinator.com/rss", rate=15, keep=100)
add("http://antyweb.pl/rss")
add("http://syndication.thedailywtf.com/TheDailyWtf")

add("http://feeds.feedburner.com/GDBcode")

add("http://hackaday.com/rss")
add("http://majsterkowo.pl/feed/")
add("http://feeds2.feedburner.com/StarterKit")

add("http://www.joelonsoftware.com/rss.xml")
add("http://feeds.feedburner.com/codinghorror")

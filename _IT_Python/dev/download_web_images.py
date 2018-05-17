import random
import urllib.request
from urllib.parse import unquote
from urllib.parse import quote

def download_web_images(url):
	name = random.randrange(1, 10001)
	full_name = str(name) + ".jpg"
	url = unquote(url)
	
	try:
		print("Success == " + url)
		urllib.request.urlretrieve(url, full_name)
	except:
		print("Error Pass == " + url)
		pass
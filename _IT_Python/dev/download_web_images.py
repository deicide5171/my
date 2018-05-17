import os
import random
import urllib.request
from urllib.parse import unquote
from urllib.parse import quote

def download_web_images(url):
        dirname = 'img'
        if not os.path.isdir('./' + dirname + '/'):
                os.mkdir('./' + dirname + '/')
                print('Success == Create ./img Directory')
        else:
                #print('isdir : True')
        name = random.randrange(1, 10001)
        full_name = './' + dirname + '/' + str(name) + ".jpg"
        url = unquote(url)
        try:
                print("Success == " + url)
                urllib.request.urlretrieve(url, full_name)
        except:
                print("Error Pass == " + url)
                pass

download_web_images('http://cfile6.uf.tistory.com/image/2235D94F57723724268D68')

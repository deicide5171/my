import sys
from PyQt5.QtWebEngineWidgets import QWebEnginePage
from PyQt5.QtWidgets import QApplication
from PyQt5.QtCore import QUrl
import codecs
import requests
from bs4 import BeautifulSoup
import urllib.request
import random
from urllib.parse import unquote
from urllib.parse import quote

class Page(QWebEnginePage):
    def __init__(self, url):
        self.app = QApplication(sys.argv)
        QWebEnginePage.__init__(self)
        self.html = ''
        self.loadFinished.connect(self._on_load_finished)
        self.load(QUrl(url))
        self.app.exec_()

    def _on_load_finished(self):
        self.html = self.toHtml(self.Callable)
        print('Load finished')

    def Callable(self, html_str):
        self.html = html_str
        self.app.quit()

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

def spider():
      baseUrl = 'https://www.google.co.kr/search?tbm=isch&q=%EA%B9%80%EC%84%B8%EC%A0%95&chips=q:%EA%B9%80%EC%84%B8%EC%A0%95,online_chips:%EA%B5%AC%EA%B5%AC%EB%8B%A8%EA%B9%80%EC%84%B8%EC%A0%95&sa=X&ved=0ahUKEwil2Ou_y4nbAhVF5rwKHT_TA8AQ4lYIJygC&biw=1920&bih=949&dpr=1'
      url = baseUrl
      page = Page(url)
      soup = BeautifulSoup(page.html, 'html.parser')
      #fw = codecs.open('test.txt', 'w', 'utf-8') #'w'(쓰기), 'r'(읽기), 'a'(이후에추가)
      #fw.write(str(soup))
      #fw.close()
      
      for link in soup.select('a'):
            #print(link)
            href = link.get('href')
            findStr = '/imgres?imgurl='
            #print(href)
            if href is not None:
                  isFind = href.find(findStr) # -1 false 0 true
                  if isFind == 0:
                        href = href[len(findStr):href.index('&')]
                        #print(href)
                        #href = unquote(href)
                        #print(href)
                        #print(href.encode('utf8'))
                        download_web_images(href)
            
spider()

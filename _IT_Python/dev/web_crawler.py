import codecs
import requests
from bs4 import BeautifulSoup
from urllib.parse import unquote
import download_web_images
import urllib.request

# download_web_images.py를 이용한 해당 URL(구글이미지검색결과) 썸네일 모두 저장

def spider():
      baseUrl = 'https://www.google.co.kr/search?tbm=isch&q=%EA%B9%80%EC%84%B8%EC%A0%95&chips=q:%EA%B9%80%EC%84%B8%EC%A0%95,online_chips:%EA%B5%AC%EA%B5%AC%EB%8B%A8%EA%B9%80%EC%84%B8%EC%A0%95&sa=X&ved=0ahUKEwil2Ou_y4nbAhVF5rwKHT_TA8AQ4lYIJygC&biw=1920&bih=949&dpr=1'
      url = baseUrl
      source_code = requests.get(url)
      plain_text = source_code.content # .text는 값을 unicode형으로 가져옴 // 반면 .content는 str형으로 가져옴 => 그래서 한글표기 가능
      soup = BeautifulSoup(plain_text, 'lxml', from_encoding='utf-8')
      #fw = codecs.open('test.txt', 'w', 'utf-8') #'w'(쓰기), 'r'(읽기), 'a'(이후에추가)
      #fw.write(str(soup))
      
      for link in soup.select('img'):
            src = link.get('src')
            #print(str(href.index('url?q=')))
            #print(str(href.index('q=')))
            #print(str(link) + '\n')
            #print(str(href))
            findStr = 'https://encrypted-tbn0.gstatic.com/images?'
            isFind = src.find(findStr) # -1 false 0 true
            if isFind == 0:
                  #src = href[len(findStr):href.index('&')]
                  #src = unquote(src)
                  #print(src)
                  #print(str(href[href.find('/url?q=http') + 7:]))
                  download_web_images.download_web_images(src)
            #fw.write(str(href) + '\n')
            #fw.write(str(href[href.find('/url?q=http') + 7:]) + '\n')
            #print(href)
            #download_web_images(src)
            
      #fw.close()
spider()

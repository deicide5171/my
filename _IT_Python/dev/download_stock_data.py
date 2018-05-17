from urllib import request

google_stock_url = 'https://github.com/gomjellie/kospi-kosdaq-csv/blob/master/kosdaq/000250.csv'

def down_stork_data(csv_url):
      response = request.urlopen(csv_url)
      csv = response.read()
      str_csv = str(csv)
      lines = str_csv.split("\\n")
      dest_url = r'google.csv' # r' 의 의미는 raw, 날 것을 의미함
      fx = open(dest_url, 'w')
      for line in lines:
            fx.write(line + "\n")
      fx.close()

down_stork_data(google_stock_url)

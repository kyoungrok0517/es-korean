docker run --name=elastic-korean -d -p 9200:9200 -p 9300:9300 -v "$PWD/config":/usr/share/elasticsearch/config -v "$PWD/esdata":/usr/share/elasticsearch/data kyoungrok/elastic-korean

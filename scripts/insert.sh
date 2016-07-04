#!/usr/bin/env bash

ES='http://localhost:9200'
ESIDX='seunjeon-idx'
TYPE='test'

# curl -XDELETE "${ES}/${ESIDX}?pretty"
# sleep 1
# curl -XPUT "${ES}/${ESIDX}/?pretty" -d '{
#   "settings" : {
#     "index":{
#       "analysis":{
#         "analyzer":{
#           "korean":{
#             "type":"custom",
#             "tokenizer":"seunjeon_default_tokenizer"
#           }
#         },
#         "tokenizer": {
#           "seunjeon_default_tokenizer": {
#             "type": "seunjeon_tokenizer",
#             "user_words": ["낄끼빠빠,-100", "버카충", "abc마트"]
#           }
#         }
#       }
#     }
#   }
# }'

# sleep 1

curl -XPOST "${ES}/${ESIDX}/${TYPE}" -d '{
  "title": "테스트1",
  "text":  "아버지 가방에 들어가신다"
}'

curl -XPOST "${ES}/${ESIDX}/${TYPE}" -d '{
  "title": "테스트2",
  "text":  "안녕하세요? 테스트 중입니다."
}'


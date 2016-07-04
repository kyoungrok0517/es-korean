#!/usr/bin/env bash

ES='http://localhost:9200'
ESIDX='seunjeon-idx'
TYPE='test'

curl -XGET "${ES}/${ESIDX}/${TYPE}/_search" -d '{
    "query": {
        "match_all": {}
    }
}'
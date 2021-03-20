#!/bin/bash

source ./env.sh

echo "ELASTIC_USER_NAME: ${ELASTIC_USER_NAME}"
echo "ELASTIC_USER_PASSWORD: ${ELASTIC_USER_PASSWORD}"
echo "ELASTIC_URL: ${ELASTIC_URL}"
echo "ELASTIC_ALIAS: ${ELASTIC_ALIAS}"

curl -k --user "${ELASTIC_USER_NAME}:${ELASTIC_USER_PASSWORD}" -XGET "https://${ELASTIC_URL}/${ELASTIC_ALIAS}/_search?scroll=10m&size=100&pretty" -H 'Content-Type: application/json' -d'
{
    "query": {
        "match_all": {}
    }
}
'

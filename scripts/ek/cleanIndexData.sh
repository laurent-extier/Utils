#!/bin/bash

source ./env.sh ${1}

echo "ELASTIC_USER_NAME=${ELASTIC_USER_NAME}"
echo "ELASTIC_USER_PASSWORD=${ELASTIC_USER_PASSWORD}"
echo "ELASTIC_URL=${ELASTIC_URL}"
echo "INDEX NAME=${ELASTIC_INDEX}"

curl -k --user "${ELASTIC_USER_NAME}:${ELASTIC_USER_PASSWORD}" -H "Content-Type:application/x-ndjson" -XPOST "https://${ELASTIC_URL}/${ELASTIC_INDEX}/_delete_by_query?routing=1" -d'
{
	 "query": {
	   "match_all": {}
	 }
}'

#!/bin/bash

source ./env.sh

echo "ELASTIC_USER_NAME=${ELASTIC_USER_NAME}"
echo "ELASTIC_USER_PASSWORD=${ELASTIC_USER_PASSWORD}"
echo "ELASTIC_URL=${ELASTIC_URL}"
 

curl -k --user "${ELASTIC_USER_NAME}:${ELASTIC_USER_PASSWORD}" -XGET "https://${ELASTIC_URL}/_aliases?pretty=true"
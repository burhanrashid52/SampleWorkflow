#!/bin/bash

# Assign the filename

filename="local.properties"
if [ -e "$filename" ]; then
  sed -i "s,.*BASE_URL.*,BASE_URL=\"$1\"," $filename
  sed -i "s/.*MAP_KEY.*/MAP_KEY=\"$2\"/" $filename
  sed -i "s/.*RETRY_ATTEMPTS.*/RETRY_ATTEMPTS=$3/" $filename
  sed -i "s/.*THRESHOLD_VALUE.*/THRESHOLD_VALUE=$4/" $filename
else
  touch local.properties
  echo "BASE_URL=\"$1\"" >> local.properties
  echo "MAP_KEY=\"$2\"" >> local.properties
  echo "RETRY_ATTEMPTS=$3" >> local.properties
  echo "THRESHOLD_VALUE=$4" >> local.properties
fi
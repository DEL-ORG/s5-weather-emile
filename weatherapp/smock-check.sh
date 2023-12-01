#!/bin/bash
ip_address=$(curl -s https://api.ipify.org ; echo)
ip_port=$(3000)
curl http://$ip_address:3000/login | grep -i "weather"

if [[ $? -ne 0 ]]
then
echo "The weater app is down, please check"
exit 1
else
echo " the weather app is up running"

fi

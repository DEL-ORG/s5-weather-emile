#!/bin/bash

for i in "weatherapp-db" "weatherapp-redis" "weatherapp-weather" "weatherapp-auth" "weatherapp-ui"
do
RUNNING=$(docker-compose ps | grep $i grep -o Up)
if [[ $RUNNING == Up ]]
 then
     echo "Container $i is UP and running"
 else
     echo "Container $i is not running"
     exit
fi

done
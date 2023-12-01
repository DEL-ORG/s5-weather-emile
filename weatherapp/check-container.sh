#!/bin/bash

# Define the names of your Docker containers
CONTAINER_NAMES=("weatherapp-db" "weatherapp-redis" "weatherapp-weather" "weatherapp-auth" "weatherapp-ui")

# Loop through each container name and check if it is running
for CONTAINER_NAME in "${CONTAINER_NAMES[@]}"; do
    if [ "$(docker inspect -f '{{.State.Running}}' $CONTAINER_NAME 2>/dev/null)" == "true" ]; then
        echo "Container $CONTAINER_NAME is running."
    else
        echo "Container $CONTAINER_NAME is not running."
    fi
done

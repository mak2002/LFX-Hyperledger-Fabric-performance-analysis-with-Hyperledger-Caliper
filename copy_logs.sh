#!/bin/bash

# Create the 'logs' directory if it doesn't exist
mkdir -p logs

# Get the names of all running Docker containers
container_names=$(docker ps --format "{{.Names}}")

# Loop through each container and copy the logs to separate text files
for container_name in $container_names; do
    # Remove leading slash from the container name
    container_name=$(echo "$container_name" | sed 's|/||')

    # Use 'docker logs' to copy the logs to a file with the container name
    docker logs "$container_name" >& "logs/$container_name.log"
done

echo "Logs copied successfully."

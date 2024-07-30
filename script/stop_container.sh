#!/bin/bash
set -e

cd /home/ubuntu

# Print current working directory
echo "Current directory: $(pwd)"

# List files in the current directory
ls -l

# Stop the running container (if any)
docker compose down

# Remove all Docker images
IMAGES=$(docker images -q)
if [ -n "${IMAGES}" ]; then
    docker rmi ${IMAGES}
else
    echo "No images to remove."
fi

# Stop and remove all Docker containers
CONTAINERS=$(docker ps -aq)
if [ -n "${CONTAINERS}" ]; then
    docker stop ${CONTAINERS}
    docker container prune -f
else
    echo "No containers to stop or remove."
fi

#!/bin/bash
set -e

cd /home/ubuntu

# Print current working directory
echo "Current directory: $(pwd)"

# List files in the current directory
ls -l

# Stop the running container (if any)
docker compose down
docker rmi $(docker images -q)
CONTAINERS=$(docker ps -aq)

if [ -n "${CONTAINERS}" ]; then
    docker stop ${CONTAINERS}
    docker container prune -f
else
    echo "No containers to stop or remove."
fi

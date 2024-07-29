#!/bin/bash
set -e

# Stop the running container (if any)
docker compose down 

CONTAINERS=$(docker ps -aq)

if [ -n "${CONTAINERS}" ]; then
    docker stop ${CONTAINERS}
    docker container prune -f
else
    echo "No containers to stop or remove."
fi
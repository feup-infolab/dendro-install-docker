#!/usr/bin/env bash

VOLUMES_FOLDER="$(pwd)/volumes"

# Stop all containers
docker stop $(docker ps -a -q)
# Delete all containers
docker rm $(docker ps -a -q)
# Delete all images
docker rmi $(docker images -q)

docker system prune -f -a

cd "$VOLUMES_FOLDER" || exit "There is no $VOLUMES_FOLDER folder!"

#clean data directories
rm -rf elasticsearch mongo mysql virtuoso dendro

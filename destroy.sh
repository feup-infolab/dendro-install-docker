#!/usr/bin/env bash

VOLUMES_FOLDER="$(pwd)/volumes"

docker stop "$(docker ps -aq)"
docker rm "$(docker ps -aq)"
docker system prune -f -a

cd "$VOLUMES_FOLDER" || exit "There is no $VOLUMES_FOLDER folder!"

#clean data directories
rm -rf elasticsearch mongo mysql virtuoso dendro

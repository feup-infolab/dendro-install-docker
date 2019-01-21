#!/usr/bin/env bash

# Stop all containers
docker stop $(docker ps -a -q)
# Delete all containers
docker rm $(docker ps -a -q)
# Delete all images
docker rmi $(docker images -q)

docker system prune -f -a

cd "$(pwd)/volumes" || exit "There is no $(pwd)/volumes folder!"

#clean data directories
rm -rf "$(pwd)/volumes/elasticsearch"
rm -rf "$(pwd)/volumes/mongo"
rm -rf "$(pwd)/volumes/mysql"
rm -rf "$(pwd)/volumes/virtuoso"
rm -rf "$(pwd)/volumes/dendro"

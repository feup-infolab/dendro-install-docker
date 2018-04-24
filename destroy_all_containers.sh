#!/usr/bin/env bash
docker stop "$(docker ps -aq)"
docker rm "$(docker ps -aq)"
docker system prune -f -a

#clean data directories
rm -rf elasticsearch mongo mysql virtuoso dendro

docker build .
docker tag dendro joaorosilva/dendro:master
docker-compose up

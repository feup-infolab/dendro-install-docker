#!/usr/bin/env bash

docker build . -t dendro:master
# docker run \
#   --name=dendro \
#   joaorosilva/dendro:master
docker tag dendro:master joaorosilva/dendro:0.3
docker push joaorosilva/dendro:0.3
docker tag dendro:master joaorosilva/dendro:master
docker push joaorosilva/dendro:master

# docker-compose up
# docker ps -a

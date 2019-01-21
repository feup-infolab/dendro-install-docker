#!/usr/bin/env bash

DENDRO_VERSION='0.7'

docker build . -t dendro:master
# docker run \
#   --name=dendro \
#   joaorosilva/dendro:master
docker tag dendro:master "feupinfolab/dendro:$DENDRO_VERSION"
docker tag dendro:master feupinfolab/dendro:master

#docker push "feupinfolab/dendro:$DENDRO_VERSION"
#docker push feupinfolab/dendro:master

docker-compose up
docker ps -a

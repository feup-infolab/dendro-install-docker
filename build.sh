#!/usr/bin/env bash

docker build . -t dendro:master
docker tag dendro joaorosilva/dendro:master
docker-compose up

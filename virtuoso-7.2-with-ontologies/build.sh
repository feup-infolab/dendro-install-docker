#!/usr/bin/env bash

docker build -t joaorosilva/virtuoso:7.2.4-dendro .
# To update image in docker hub
docker push joaorosilva/virtuoso:7.2.4-dendro

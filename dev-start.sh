#!/bin/sh
docker network create eventing
docker-compose --file dev-compose.yml up --detach

# curl http://127.0.0.1:9200

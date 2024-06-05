#!/bin/bash
#
# Docker Networkの作成
#
DOCKER_NETWORK_NAME=lua-nginx-container-link

if ! docker network ls | awk '{ print $2 }' | grep -qx ${DOCKER_NETWORK_NAME}; then
    docker network create --driver bridge ${DOCKER_NETWORK_NAME}
fi

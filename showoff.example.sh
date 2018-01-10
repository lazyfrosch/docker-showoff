#!/bin/bash

TAG=latest

if [ -z "$1" ]; then
    set -- serve
fi

docker run --rm -it \
    -v "$PWD:/showoff" \
    -e USER=`id -un` \
    -e UID=`id -u` \
    -e GID=`id -g` \
    -p 9090:9090 \
    lazyfrosch/showoff:"$TAG" showoff "$@"

#!/bin/bash

name="${1?Needs one argument}"

containerId=$(docker images | grep $name | awk '{print $3;}')


if [[ -n "$containerId" ]]; then
	echo "Removing images: $containerId"
    docker rmi -f $containerId
else
    echo "No docker container with name: $name is running"
fi

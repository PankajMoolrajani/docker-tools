#!/bin/bash

name="${1?Needs one argument}"

containerId=$(docker ps -a | grep $name | awk '{print $1;}')


if [[ -n "$containerId" ]]; then
	echo "Removing container: $containerId"
    docker rm $containerId
else
    echo "No docker container with name: $name is running"
fi

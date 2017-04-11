#!/bin/bash

name="${1?Needs one argument}"

containerId=$(docker ps -a | grep $name | awk '{print $1;}')


if [[ -n "$containerId" ]]; then
	echo "Terminating conainer: $containerId"
    docker stop $containerId
else
    echo "No docker container with name: $name is running"
fi

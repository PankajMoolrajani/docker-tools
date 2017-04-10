#!/bin/bash

name="${1?Needs one argument}"

containerId=$(docker ps -a | grep $name | awk '{print $1;}')


if [[ -n "$containerId" ]]; then
	echo "Entering conainer: $containerId"
    docker exec -it $containerId bash
else
    echo "No docker container with name: $name is running"
fi
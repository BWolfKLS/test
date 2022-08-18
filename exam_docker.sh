#!/bin/bash


CONTAINER=bw-study_app

if [ "(docker ps -q -f name=$CONTAINER)" ]; then
	docker stop $CONTAINER ; docker rm $CONTAINER
else echo "done 2 cicle docker"
fi




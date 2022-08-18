#!/bin/bash


CONTAINER=bw-study_app

if [ "(docker ps -q -f name=$CONTAINER)" ]; then
	sudo docker stop $CONTAINER ; sudo docker rm $CONTAINER
else echo "done 2 cicle docker"
fi




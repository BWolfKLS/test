#!/bin/bash


CONTAINER=bw-study_app

if [ "(docker ps -q -f name=$CONTAINER)" ]; then
	docker stop $CONTAINER ; docker rm $CONTAINER
	docker run -d -p 9500:80 --name bw-study_app bwolf84/study:$CIRCLE_SHA1
	echo "done 1 cicle docker"
else 	docker run -d -p 9500:80 --name bw-study_app bwolf84/study:$CIRCLE_SHA1
	echo "done 2 cicle docker"
fi




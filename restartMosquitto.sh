#!/usr/bin/bash
#
#
containerName=mqtt
docker stop $containerName
docker rm $containerName

docker run --restart always --name $containerName -d -p 1883:1883 -p 9001:9001 -v ./mosquitto.conf:/mosquitto/config/mosquitto.conf eclipse-mosquitto  

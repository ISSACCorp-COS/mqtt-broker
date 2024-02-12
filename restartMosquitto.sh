#!/usr/bin/bash
#
#
containerName=mqtt
pullImageName='eclipse-mosquitto:2.0.18'
imageName=192.168.1.99:5000/component/$pullImageName

docker stop $containerName
docker rm $containerName

docker run --restart always --name $containerName -d -p 1883:1883 -p 9001:9001 -v $(pwd)/mosquitto.conf:/mosquitto/config/mosquitto.conf $imageName

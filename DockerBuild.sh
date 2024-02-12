
pullImageName='eclipse-mosquitto:2.0.18'
docker pull eclipse-mosquitto:2.0.18

imageName=192.168.1.99:5000/component/$pullImageName
docker tag  $pullImageName $imageName
docker push $imageName

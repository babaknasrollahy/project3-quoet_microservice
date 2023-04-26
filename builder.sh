#!/bin/bash
echo "Start to BUILD Quote_App ........"
build -t babaknasrolahy/qoute:latest ./QuoteService/app.dockerfile
echo "Start to PUSH Quote_App on the DockerHub ..... "
docker push babaknasrolahy/qoute:latest

echo "-------------------------------------------------------------"


echo "Start to BUILD ApiGateway ........"
build -t babaknasrolahy/api_qoute:latest ./ApiGateway/app.dockerfile
echo "Start to PUSH ApiGateway on the DockerHub ..... "
docker push babaknasrolahy/api_qoute:latest

echo "-------------------------------------------------------------"


echo "Start to BUILD FrontEnd_App ........"
build -t babaknasrolahy/front_qoute:latest ./FrontendApplication/app.dockerfile
echo "Start to PUSH FrontEnd_App on the DockerHub ..... "
docker push babaknasrolahy/front_qoute:latest

echo "EveryThing is ok :)))) "



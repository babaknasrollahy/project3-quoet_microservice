#!/bin/bash
echo "Start to BUILD Quote_App ........"
docker build -t babaknasrolahy/qoute:latest -f ./QuoteService/app.dockerfile .
echo "Start to PUSH Quote_App on the DockerHub ..... "
docker push babaknasrolahy/qoute:latest

echo "-------------------------------------------------------------"


echo "Start to BUILD ApiGateway ........"
docker build -t babaknasrolahy/api_qoute:latest -f ./ApiGateway/app.dockerfile .
echo "Start to PUSH ApiGateway on the DockerHub ..... "
docker push babaknasrolahy/api_qoute:latest

echo "-------------------------------------------------------------"


echo "Start to BUILD FrontEnd_App ........"
docker build -t babaknasrolahy/front_qoute:latest -f ./FrontendApplication/app.dockerfile .
echo "Start to PUSH FrontEnd_App on the DockerHub ..... "
docker push babaknasrolahy/front_qoute:latest

echo "EveryThing is ok :)))) "



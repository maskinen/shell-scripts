#!/bin/bash

echo "Bygger och startar Docker-container på Fedora..."
docker build -t devops-pipeline .
docker run -d -p 5000:5000 --name devops-app devops-pipeline

echo "Container körs. Öppna http://192.168.56.101:5000 för att testa."
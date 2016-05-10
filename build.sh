#!/bin/bash

# Tag then existing version case "old"
docker tag slgsaravanan/jenkins-docker slgsaravanan/jenkins-docker:old

# Build then image
docker build --no-cache --tag=slgsaravanan/jenkins-docker .
docker push slgsaravanan/jenkins-docker

# Delete the old image
docker rmi slgsaravanan/jenkins-docker:old

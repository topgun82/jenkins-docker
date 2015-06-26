#!/bin/bash
docker build --no-cache --tag=onsdigital/jenkins .
docker tag -f onsdigital/jenkins carboni.io/jenkins
docker push carboni.io/jenkins

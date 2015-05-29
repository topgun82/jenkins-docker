#!/bin/bash
docker build --tag=localhost:5000/jenkins .
docker push localhost:5000/jenkins

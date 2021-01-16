#!/bin/bash

# Copying the jar file to the build location
cp java-app/target/*.jar  jenkins/build/

echo "*****************************************"
echo "*******Building the docker image*********"
echo "*****************************************"

cd jenkins/build  && docker-compose -f docker-compose-build.yaml build --no-cache 

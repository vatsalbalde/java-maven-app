#!/bin/bash
echo "*****************************"
echo "******Pushing Image**********"
echo "*****************************"


IMAGE="maven-projects"

echo "*****Logging in**************"
docker login -u vatsalbalde014 -p $PASS
echo "*****Tagging Image***********"
docker tag $IMAGE:$BUILD_TAG vatsalbalde014/$IMAGE:$BUILD_TAG 
echo "*****Pushing Image***********"
docker push vatsalbalde014/$IMAGE:$BUILD_TAG

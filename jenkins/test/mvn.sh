#!/bin/bash
echo "**********************************"
echo "*****Testing the code*************"
echo "**********************************"
docker run --rm  -v /var/lib/jenkins/workspace/jenkins-java-maven/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"

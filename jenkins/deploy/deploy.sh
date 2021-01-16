#!/bin/bash

echo maven-projects > /tmp/.auth

echo $BUILD_TAG  >> /tmp/.auth

echo $PASS >> /tmp/.auth

scp /tmp/.auth root@cyborg:/tmp/.auth
scp jenkins/deploy/publish root@cyborg:/tmp/publish
ssh root@cyborg "/tmp/publish"

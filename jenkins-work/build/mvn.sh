#!/bin/bash
echo "*****************"
echo "** Building jar**"
echo "*****************"

# WORKSPACE=/vagrant/jenkins/jenkins_home/workspace/pipeline
docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine \
"$@"
# mvn -B -DskipTest clean package

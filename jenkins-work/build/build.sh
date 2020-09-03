#!/bin/bash
#copy new jar to build location
cp -f java-app/target/*.jar jenkins-work/build/

echo "*******************"
echo "** Building image**"
echo "*******************"

cd jenkins-work/build/ && docker-compose build --no-cache

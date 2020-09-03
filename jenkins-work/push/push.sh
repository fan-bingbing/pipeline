#!/bin/bash
echo "*******************"
echo "** Pushing image **"
echo "*******************"

IMAGE="sample-project"
echo "** Logging in Dockerhub **"
docker login -u $DOCKERHUB_USER -p $PASS

echo "** Tagging image **"
docker tag $IMAGE:$BUILD_TAG $DOCKERHUB_USER/$IMAGE:$BUILD_TAG

echo "** Pushing image **"
docker push $DOCKERHUB_USER/$IMAGE:$BUILD_TAG

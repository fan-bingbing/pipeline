#!/bin/bash
echo "*******************"
echo "** Pushing image **"
echo "*******************"

IMAGE="sample-project"
echo "** Logging in Dockerhub **"
docker login -u fanbingbing -p $PASS

echo "** Tagging image **"
docker tag $IMAGE:$BUILD_TAG fanbingbing/$IMAGE:$BUILD_TAG

echo "** Pushing image **"
docker push fanbingbing/$IMAGE:$BUILD_TAG

#!/bin/sh
TAG="0.2"
DOCKER_IMAGE_NAME=docker.io/apodhrad/ocp-json-server

docker rmi --force=true ${DOCKER_IMAGE_NAME}:${TAG}
docker build --force-rm=true --rm=true -t ${DOCKER_IMAGE_NAME}:${TAG} .

echo =========================================================================
echo Docker image is ready.  Try it out by running the following command:
echo     docker run -it --rm -p 3000:3000 --network=host --name=ocp-json-server -e DB_URL={DB_URL} ${DOCKER_IMAGE_NAME}:${TAG}
echo =========================================================================

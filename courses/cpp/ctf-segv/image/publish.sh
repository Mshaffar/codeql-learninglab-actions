#! /bin/bash

# TODO: move to /scripts/

set -e
set -x

docker login docker.pkg.github.com -u github-actions -p ${GITHUB_TOKEN}

IMAGE_VERSION=latest
IMAGE_TAG=docker.pkg.github.com/github/codeql-learninglab-actions/courses-cpp-ctf-segv:${IMAGE_VERSION}

docker build -t $IMAGE_TAG .

docker push $IMAGE_TAG
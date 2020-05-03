#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
export DOCKER_ID="mayman93"
dockerpath=$DOCKER_ID/project4

# Step 2:  
# Authenticate & tag
docker login
docker tag project4 $DOCKER_ID/project4
docker push $DOCKER_ID/project4

# Step 3:
# Push image to a docker repository
docker push $DOCKER_ID/project4
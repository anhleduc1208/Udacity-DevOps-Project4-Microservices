#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=anhleduc1208/udacity_flask_app_image:v2

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag flask_app_image:v2 $dockerpath
# Step 3:
# Push image to a docker repository
docker push $dockerpath
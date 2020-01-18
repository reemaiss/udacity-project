#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=2030rema/api
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login localhost:8080
docker tag 6a8f19eaf1f0 2030rema/httpd:version1.0

# Step 3:
# Push image to a docker repository
docker push 2030rema/api:latest

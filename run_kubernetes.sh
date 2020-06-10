#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=kamachikuq/app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run app --image=$dockerpath --port=80 --labels app=app

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
#kubectl expose --type=LoadBalancer --port=8000 --target-port=80
kubectl port-forward app 8000:80

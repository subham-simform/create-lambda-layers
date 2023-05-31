#!/bin/bash

# Set the directory where the Dockerfile and requirements.txt are located
# DIRECTORY="/path/to/your/layer/directory"
DIRECTORY="$(pwd)"
LAYER_NAME="layer"
# Build the Docker image
docker build -t lambda-layer "$DIRECTORY"

# Run the Docker container to create the layer
docker run --name lambda-layer-container -v "$DIRECTORY:/app" lambda-layer

# Move the layer.zip file to the layers directory
mkdir layers

mv "$DIRECTORY/$LAYER_NAME.zip" "$DIRECTORY/layers/$LAYER_NAME.zip"

# Stop the conainer
docker stop lambda-layer-container

# Remove the running conainer
docker rm lambda-layer-container

# Cleanup: remove the Docker image
docker rmi --force lambda-layer

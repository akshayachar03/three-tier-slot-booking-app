#!/bin/bash

APP_NAME=$1
IMAGE=$2

echo "Updating image in $APP_NAME manifest..."
sed -i "s|image: .*|image: $IMAGE|g" k8s/${APP_NAME}-deployment.yaml

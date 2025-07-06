#!/bin/bash

SERVICE=$1
IMAGE=$2

# Example sed (adjust as needed)
sed -i "s|image:.*|image: $IMAGE|g" k8s-manifests/$SERVICE-deployment.yaml


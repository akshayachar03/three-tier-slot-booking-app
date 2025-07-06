#!/bin/bash

SERVICE=$1
IMAGE=$2

echo "Updating $SERVICE deployment image to: $IMAGE"

TARGET_FILE="k8s-manifests/${SERVICE}-deployment.yaml"

if [ -f "$TARGET_FILE" ]; then
  sed -i "s|image:.*|image: $IMAGE|g" "$TARGET_FILE"
  echo "✅ Updated $TARGET_FILE with new image."
else
  echo "❌ Error: $TARGET_FILE not found"
  exit 1
fi


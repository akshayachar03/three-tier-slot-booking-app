#!/bin/bash

SERVICE=$1
IMAGE=$2

# Get the full path to this script, then go up one level
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

TARGET_FILE="$ROOT_DIR/k8s-manifests/${SERVICE}-deployment.yaml"

echo "Updating $SERVICE deployment image to: $IMAGE"

if [ -f "$TARGET_FILE" ]; then
  sed -i "s|^\(\s*image:\s*\).*|\1$IMAGE|g" "$TARGET_FILE"
  echo "✅ Updated $TARGET_FILE with new image."
  echo "📄 Contents of updated file:"
  cat "$TARGET_FILE"
else
  echo "❌ Error: $TARGET_FILE not found"
  exit 1
fi

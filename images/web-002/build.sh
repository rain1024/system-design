USER_NAME="rain1024"
IMAGE_NAME="$USER_NAME/flask-hello-world"
IMAGE_TAG="0.1.0"  # or specify a version like "v1.0"

# Build the Docker image
docker build -t $IMAGE_NAME:$IMAGE_TAG .

# Push the Docker image to the registry
docker push $IMAGE_NAME:$IMAGE_TAG

echo "Build and push completed!"
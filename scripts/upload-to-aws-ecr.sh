#
# Push and tag the newly created Docker image.
#
tutor images push backup
docker tag ${ECR_REGISTRY}/${ECR_REPOSITORY}:${REPOSITORY_TAG} ${ECR_REGISTRY}/${ECR_REPOSITORY}:latest
docker push ${ECR_REGISTRY}/${ECR_REPOSITORY}:latest

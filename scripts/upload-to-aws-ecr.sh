#!/bin/bash
#---------------------------------------------------------
#
# Push and tag the newly created Docker image.
#
#---------------------------------------------------------
tutor images push backup
docker tag ${AWS_ECR_REGISTRY_BACKUP}/${AWS_ECR_REPOSITORY_BACKUP}:${REPOSITORY_TAG_BACKUP} ${AWS_ECR_REGISTRY_BACKUP}/${AWS_ECR_REPOSITORY_BACKUP}:latest
docker push ${AWS_ECR_REGISTRY_BACKUP}/${AWS_ECR_REPOSITORY_BACKUP}:latest

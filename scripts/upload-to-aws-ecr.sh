#!/bin/bash
#---------------------------------------------------------
#
# Push and tag the newly created Docker image.
#
#---------------------------------------------------------
tutor images push backup
docker tag ${{ inputs.aws-ecr-registry }}/${{ inputs.aws-ecr-repository }}:${REPOSITORY_TAG} ${{ inputs.aws-ecr-registry }}/${{ inputs.aws-ecr-repository }}:latest
docker push ${{ inputs.aws-ecr-registry }}/${{ inputs.aws-ecr-repository }}:latest

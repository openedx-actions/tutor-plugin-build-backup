#!/bin/bash
#---------------------------------------------------------
#
# Download and tutor-install the hastexo Backup & Restore plugin.
# Set the URL of the Docker image so that we can push to a
# public repository in a later step.
#
#---------------------------------------------------------
pip install git+https://github.com/hastexo/tutor-contrib-backup@${PLUGIN_RELEASE}
tutor plugins enable backup
tutor config save --set BACKUP_DOCKER_IMAGE=${AWS_ECR_REGISTRY}/${AWS_ECR_REPOSITORY}:${REPOSITORY_TAG}

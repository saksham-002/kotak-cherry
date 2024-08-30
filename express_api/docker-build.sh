#!/bin/bash
set -e

#Go to root directory
BASEDIR=$(dirname "$0")

#Account variables
AWS_REGION="ap-south-1"
REGISTRY="861276100864.dkr.ecr.ap-south-1.amazonaws.com"


git_branch=${BRANCH_NAME}
epoch=$(date +%s)
echo ${epoch}
ecr_repo_name="express-api"
tag="${epoch}"
echo ${tag}

aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 861276100864.dkr.ecr.ap-south-1.amazonaws.com

echo "*** Building Docker image: ${REGISTRY}/${ecr_repo_name}:${tag} ***"
docker build -t ${REGISTRY}/${ecr_repo_name}:${tag} .
echo "Image built successfully".

echo "Pushing image to Docker Registry."
docker push ${REGISTRY}/${ecr_repo_name}:${tag}
echo "Image pushed successfully."

docker rmi -f ${REGISTRY}/${ecr_repo_name}:${tag}
echo "Deleted image from build server."

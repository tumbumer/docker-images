#!/bin/bash

#IMAGE_NAME='nginx'
#IMAGE_TAG='local'
##USER_NAME='tumbumer'
#
#doError() {
#  echo ''
#  echo "ERROR: $1"
#  exit 100
#}
#
#checkError() {
#  if [ $1 != 0 ]; then
#    doError "$2"
#  fi
#}
#
## build image
#OUTPUT=$(docker build -q -t ${IMAGE_NAME}:${IMAGE_TAG} .)
#checkError ${?} "Dockerimage build failed!"
#
## get image id
#IMAGE_ID=$(echo ${OUTPUT} | sed -n -e 's/sha256://p')
#if [[ -z "$IMAGE_ID" ]]; then
#  error "Can't get image id"
#fi

# tag image
#docker tag ${IMAGE_ID} ${USER_NAME}/${IMAGE_NAME}:${IMAGE_TAG}
#checkError ${?} "Can't tag image $IMAGE_ID"

# push image
#docker push ${USER_NAME}/${IMAGE_NAME}
#checkError ${?} "Can't push image $IMAGE_ID"

# remove local image
#docker rmi -f ${IMAGE_ID}
#checkError ${?} "Can't remove image $IMAGE_ID"

# pull image from repo
#docker pull ${USER_NAME}/${IMAGE_NAME}:${IMAGE_TAG}
#checkError ${?} "Can't pull $IMAGE_NAME:$IMAGE_TAG"

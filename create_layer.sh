#!/bin/bash
set -ex

PKG_PATH="python"
MOUNT_PATH="/tmp/create_layer"
rm -rf ${PKG_PATH} && mkdir -p ${PKG_PATH}

# Update variables below if needed
PLATFORM="linux/amd64"
PY_VERSION="3.12"
DOCKER_IMAGE="python:${PY_VERSION}"

# pip install in docker container
docker run --platform ${PLATFORM} -v "$(pwd):${MOUNT_PATH}" ${DOCKER_IMAGE} \
pip3 install -r ${MOUNT_PATH}/requirements.txt -t ${MOUNT_PATH}/${PKG_PATH}

# zip it
zip -r "$(pwd)/layer_to_upload.zip" ${PKG_PATH}

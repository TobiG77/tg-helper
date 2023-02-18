#!/bin/bash

TERRAFORM_VERSION="${TERRAFORM_VERSION:-1.3.8}"
TERRAGRUNT_VERSION="${TERRAGRUNT_VERSION:-0.43.2}"

CONTAINER_IMAGE_VERSION="${CONTAINER_IMAGE_VERSION:-0.1}"


set -xeuo pipefail

build_container() {

    FULL_CONTAINER_IMAGE_NAME="tobig77/tg-helper:${CONTAINER_VARIANT}-${CONTAINER_IMAGE_VERSION}"

    docker build \
        --build-arg TERRAGRUNT_VERSION="$TERRAGRUNT_VERSION" \
        --build-arg TERRAFORM_VERSION="$TERRAFORM_VERSION" \
        -f "Dockerfile.${CONTAINER_VARIANT}" \
        -t "$FULL_CONTAINER_IMAGE_NAME" \
        .

    docker push "$FULL_CONTAINER_IMAGE_NAME"

}

invalid_usage() {
    echo "You must provide the container variant (slim|ado)"
    exit 1
}

case $1 in
    slim|ado)
        CONTAINER_VARIANT="$1"
        build_container
        ;;
    *)
        invalid_usage
        ;;
esac

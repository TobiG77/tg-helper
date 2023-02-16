#!/bin/bash

docker build \
    --build-arg TERRAGRUNT_VERSION="0.43.2" \
    --build-arg TERRAFORM_VERSION="1.3.8" \
    -t tobig77/tg-helper:0.1 .

docker push tobig77/tg-helper:0.1
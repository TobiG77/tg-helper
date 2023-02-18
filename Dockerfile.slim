FROM alpine:3.17

RUN apk update
RUN apk add --no-cache \
    bash \
    curl \
    ca-certificates  \
    git \
    openssh \
    unzip

ARG TERRAFORM_VERSION
ADD https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip /usr/local/bin/terraform.zip
RUN unzip -x /usr/local/bin/terraform.zip -d /usr/local/bin/ && \
    rm -f /usr/local/bin/terraform.zip

ARG TERRAGRUNT_VERSION
ADD https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 /usr/local/bin/terragrunt
RUN chmod +x /usr/local/bin/terragrunt


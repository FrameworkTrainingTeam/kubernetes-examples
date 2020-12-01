#!/usr/bin/env bash
set -e

TERRAFORM_VERSION=$1

wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -P /tmp
unzip /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /tmp
sudo mv /tmp/terraform /usr/local/bin/
chmod +x /usr/local/bin/terraform
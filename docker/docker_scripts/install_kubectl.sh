#!/usr/bin/env bash
set -e

# https://github.com/kubernetes/kubernetes/releases
KUBERNETES_VERSION=$1

wget https://storage.googleapis.com/kubernetes-release/release/v${KUBERNETES_VERSION}/bin/linux/amd64/kubectl -P /tmp
sudo mv /tmp/kubectl /usr/local/bin/kubectl
chmod +x /usr/local/bin/kubectl
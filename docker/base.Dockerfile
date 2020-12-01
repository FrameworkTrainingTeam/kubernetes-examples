ARG UBUNTU_VERSION=18.04
FROM ubuntu:${UBUNTU_VERSION}

RUN apt-get update
RUN apt-get install -y wget sudo

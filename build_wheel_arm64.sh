#!/bin/bash

set -ex

docker run --rm --privileged multiarch/qemu-user-static --reset -p yes

docker run -v /var/run/docker.sock:/var/run/docker.sock -v ($pwd):/ws:rw --workdir=/ws arm64v8/ubuntu:20.04 \
   bash -exc 'apt-get -y update && apt-get -y install git make curl python3 python3-pip && \
   curl -fsSL https://get.docker.com -o get-docker.sh && \
   sh get-docker.sh && \
   pip install cibuildwheel && \
   make release'

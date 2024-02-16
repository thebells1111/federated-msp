#!/bin/sh

# set up docker platform emulation (only need to do this once)
docker run --privileged --rm tonistiigi/binfmt --install all

# build amd64 and arm64 images and push to docker hub
docker buildx build --platform linux/amd64,linux/arm64/v8 --tag thebells1111/federated-msp:latest --push .
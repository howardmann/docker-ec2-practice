#!/usr/bin/env bash

#  build the image and run the container. Replace [__dirname] with your localhost parent directory
docker build -t docker-aws .
docker container run --name docker-aws --rm -p 3000:3000 -v ~[__dirname]/docker_aws_node/src:/usr/src/app/src  docker-aws:latest
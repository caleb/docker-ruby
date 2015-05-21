#!/usr/bin/env bash

NO_CACHE=${1:-false}

docker build --no-cache=$NO_CACHE --tag=docker.rodeopartners.com/ruby:2.1.6-jessie .
docker tag -f docker.rodeopartners.com/ruby:2.1.6-jessie docker.rodeopartners.com/ruby:2.1.6
docker tag -f docker.rodeopartners.com/ruby:2.1.6-jessie docker.rodeopartners.com/ruby:2.1

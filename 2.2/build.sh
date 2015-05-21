#!/usr/bin/env bash

NO_CACHE=${1:-false}

docker build --no-cache=$NO_CACHE --tag=docker.rodeopartners.com/ruby:2.2.1-jessie .
docker tag -f docker.rodeopartners.com/ruby:2.2.1-jessie docker.rodeopartners.com/ruby:2.2.1
docker tag -f docker.rodeopartners.com/ruby:2.2.1-jessie docker.rodeopartners.com/ruby:2.2

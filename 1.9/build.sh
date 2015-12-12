#!/usr/bin/env bash

NO_CACHE=${1:-false}

docker build --no-cache=$NO_CACHE --tag=caleb/ruby:1.9.3-jessie .
docker tag -f caleb/ruby:1.9.3-jessie caleb/ruby:1.9.3
docker tag -f caleb/ruby:1.9.3-jessie caleb/ruby:1.9

#!/usr/bin/env bash

NO_CACHE=${1:-false}

docker build --no-cache=$NO_CACHE --tag=caleb/ruby:2.1.6-jessie .
docker tag -f caleb/ruby:2.1.6-jessie caleb/ruby:2.1.6
docker tag -f caleb/ruby:2.1.6-jessie caleb/ruby:2.1

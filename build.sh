#!/usr/bin/env bash

NO_CACHE=${1:-false}

cd 2.2
./build.sh $NO_CACHE
cd ..

cd 2.1
./build.sh $NO_CACHE
cd ..

cd 1.9
./build.sh $NO_CACHE
cd ..

docker tag -f docker.rodeopartners.com/ruby:2.2.1-jessie docker.rodeopartners.com/ruby:2
docker tag -f docker.rodeopartners.com/ruby:2.2.1-jessie docker.rodeopartners.com/ruby:latest

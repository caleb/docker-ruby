#!/usr/bin/env bash

NO_CACHE=${1:-false}

cd 2.3
./build.sh $NO_CACHE
cd ..

cd 2.2
./build.sh $NO_CACHE
cd ..

cd 2.1
./build.sh $NO_CACHE
cd ..

cd 1.9
./build.sh $NO_CACHE
cd ..

docker tag -f caleb/ruby:2.3.0-jessie caleb/ruby:2
docker tag -f caleb/ruby:2.3.0-jessie caleb/ruby:latest

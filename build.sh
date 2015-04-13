#!/usr/bin/env bash

cd 2.2
./build.sh
cd ..

cd 1.9
./build.sh
cd ..

docker tag -f docker.rodeopartners.com/ruby:2.2.1-jessie docker.rodeopartners.com/ruby:2
docker tag -f docker.rodeopartners.com/ruby:2.2.1-jessie docker.rodeopartners.com/ruby:latest

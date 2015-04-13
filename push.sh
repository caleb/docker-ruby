#!/usr/bin/env bash

cd 2.2
./push.sh
cd ..

cd 1.9
./push.sh
cd ..

docker push docker.rodeopartners.com/ruby:latest
docker push docker.rodeopartners.com/ruby:2

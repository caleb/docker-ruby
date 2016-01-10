#!/usr/bin/env bash

cd 2.3
./push.sh
cd ..

cd 2.2
./push.sh
cd ..

cd 2.1
./push.sh
cd ..

cd 1.9
./push.sh
cd ..

docker push caleb/ruby:latest
docker push caleb/ruby:2

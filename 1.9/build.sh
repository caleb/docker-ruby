#!/usr/bin/env bash

docker build --tag=docker.rodeopartners.com/ruby:1.9.3-jessie .
docker tag -f docker.rodeopartners.com/ruby:1.9.3-jessie docker.rodeopartners.com/ruby:1.9.3
docker tag -f docker.rodeopartners.com/ruby:1.9.3-jessie docker.rodeopartners.com/ruby:1.9

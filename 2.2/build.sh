#!/usr/bin/env bash

docker build --tag=docker.rodeopartners.com/ruby:2.2.1-jessie .
docker tag -f docker.rodeopartners.com/ruby:2.2.1-jessie docker.rodeopartners.com/ruby:latest
docker tag -f docker.rodeopartners.com/ruby:2.2.1-jessie docker.rodeopartners.com/ruby:2.2.1
docker tag -f docker.rodeopartners.com/ruby:2.2.1-jessie docker.rodeopartners.com/ruby:2.2
docker tag -f docker.rodeopartners.com/ruby:2.2.1-jessie docker.rodeopartners.com/ruby:2

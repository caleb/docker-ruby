#!/usr/bin/env bash

NO_CACHE=${1:-false}

docker build --no-cache=$NO_CACHE --tag=caleb/ruby:2.2 .

FROM buildpack-deps:jessie

MAINTAINER Caleb Land <caleb@land.fm>

ENV DOCKER_HELPERS_VERSION=1.0

# Download our docker helpers
ADD https://github.com/caleb/docker-helpers/releases/download/v${DOCKER_HELPERS_VERSION}/helpers-v${DOCKER_HELPERS_VERSION}.tar.gz /tmp/helpers.tar.gz

# Install the docker helpers
RUN mkdir -p /helpers \
&&  tar xzf /tmp/helpers.tar.gz -C / \
&&  rm /tmp/helpers.tar.gz

# Install the base system
RUN /bin/bash /helpers/install_base.sh

#
# Install ruby-install
#
ADD https://github.com/postmodern/ruby-install/archive/v0.5.0.tar.gz /tmp/ruby-install.tar.gz
RUN apt-get update \
&&  cd /tmp \
&&  tar -xzvf ruby-install.tar.gz \
&&  cd ruby-install-0.5.0 \
&&  make install \
&&  ruby-install --install-dir /usr/local ruby 1.9.3-p484 \
&&  rm -rf /var/lib/apt/lists/*

#
# Install bundler
#
RUN gem install bundler

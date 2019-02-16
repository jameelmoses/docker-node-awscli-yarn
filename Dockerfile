FROM node:slim

MAINTAINER Jameel Moses <hello@jameelmoses.com>

# Install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && \
    apt-get install -y yarn python-dev python-pip && \
    pip install awscli

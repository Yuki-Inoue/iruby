#!/bin/bash

set -ex

apt-get update
apt-get install -y --no-install-recommends \
        libczmq-dev \
        python3 \
        python3-pip \
        python3-setuptools \
        python3-wheel

cd /tmp
tar cf - iruby | tar xf - -C /

cd /iruby
bundle install --with test
pip3 install jupyter
bundle exec rake test

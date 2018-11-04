#!/bin/bash

set -x

cd /tmp
tar cf - iruby | tar xf - -C /

cd /iruby
bundle install
bundle exec rake test

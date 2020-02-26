#!/bin/bash

curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
curl -sSL https://rvm.io/pkuczynski.asc | gpg2 --import -
curl -sSL https://get.rvm.io | bash -s stable
source /home/ec2-user/.rvm/scripts/rvm

cd /home/ec2-user/newrelic-ruby-kata

rvm rvmrc warning ignore allGemfiles
rvm install "ruby-2.2.2"

bundle install
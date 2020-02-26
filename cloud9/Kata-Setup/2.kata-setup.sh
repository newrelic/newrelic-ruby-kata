#!/bin/bash

cd /home/ec2-user/newrelic-ruby-kata

bundle exec rake db:create
pg_restore --verbose --clean --no-acl --no-owner -h localhost -U $USER -d newrelic-ruby-kata_development public/sample-data.dump
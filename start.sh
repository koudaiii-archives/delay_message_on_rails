#!/bin/bash -x
bundle exec rake db:migrate
bundle exec rails server -b 0.0.0.0
#!/usr/bin/env bash
# exit on error
set -o errexit

gem bundler install -v 2.4.10

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate

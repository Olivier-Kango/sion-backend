#!/usr/bin/env bash
# exit on error
set -o errexit

gem install bundler --user-install

bundle install
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
bundle exec rake assets:precompile
bundle exec rake assets:clean

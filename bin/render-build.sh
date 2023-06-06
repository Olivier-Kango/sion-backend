#!/usr/bin/env bash
# exit on error
set -o errexit

gem install bundler -v 2.4.10 --user-install

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate

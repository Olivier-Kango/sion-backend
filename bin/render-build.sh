#!/usr/bin/env bash
# exit on error
set -o errexit

sudo gem install bundler
bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
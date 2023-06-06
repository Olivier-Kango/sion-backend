#!/usr/bin/env bash
# exit on error
set -o errexit

# Specify a different writable directory
export GEM_HOME="/tmp/vendor/bundle"

gem install bundler
bundle install --path "${GEM_HOME}"
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
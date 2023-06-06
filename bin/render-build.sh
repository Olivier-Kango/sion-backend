#!/usr/bin/env bash
# exit on error
set -o errexit

export GEM_HOME="/app/vendor/bundle"

gem install bundler
bundle install --path "${GEM_HOME}"
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
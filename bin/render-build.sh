#!/usr/bin/env bash
# exit on error
set -o errexit

gem install bundler
bundle install --path vendor/bundle
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
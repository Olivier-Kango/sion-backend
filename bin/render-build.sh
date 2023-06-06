#!/usr/bin/env bash
# exit on error
set -o errexit

# Install Bundler
gem install bundler -v 2.4.10

# Run bundle install and other commands
bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate

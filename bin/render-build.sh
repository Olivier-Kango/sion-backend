#!/usr/bin/env bash
# exit on error
set -o errexit

# Install Bundler
gem install bundler -v 2.4.10

# Run bundle install and other commands
bundle install
RAILS_ENV=production bundle exec rails assets:precompile
RAILS_ENV=production bundle exec rails assets:clean
RAILS_ENV=production bundle exec rails db:migrate

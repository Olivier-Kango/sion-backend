#!/usr/bin/env bash
# exit on error
set -o errexit

# Update Ruby version
ruby_version="3.1.3"

# Install Ruby using RVM
curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -sSL https://get.rvm.io | bash -s stable --ruby=$ruby_version --gems=bundler

# Use the installed Ruby and Bundler
source ~/.rvm/scripts/rvm
rvm use $ruby_version

gem install bundler -v 2.4.10

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate


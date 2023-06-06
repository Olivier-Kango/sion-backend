#!/usr/bin/env bash
# exit on error
set -o errexit

# Install Bundler
gem install bundler --user-install

# Add the gem executables directory to the PATH
export PATH=$HOME/.gem/ruby/3.1.3/bin:$HOME/.gem/ruby/2.5.0/bin:$PATH

bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate


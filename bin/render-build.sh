#!/usr/bin/env bash
# exit on error
set -o errexit

gem install bundler -v 2.1 --user-install

# Add the gem executables directory to the PATH
export PATH=$HOME/.gem/ruby/2.5.0/bin:$PATH

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate

#!/usr/bin/env bash
# exit on error
set -o errexit

rbenv global 3.1.3

gem install bundler -v 2.4.10 --user-install

# Add the gem executables directory to the PATH
export PATH=$HOME/.gem/ruby/3.1.3/bin:$PATH

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate

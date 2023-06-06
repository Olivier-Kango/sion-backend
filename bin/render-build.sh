#!/usr/bin/env bash
# exit on error
set -o errexit

# Add the gem executables directory to the PATH
export PATH=/opt/render/ruby/3.1.3/bin:$PATH

gem install bundler -v 2.4.10 --user-install

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate

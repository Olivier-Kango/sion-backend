#!/usr/bin/env bash
# exit on error
set -o errexit

# Add the gem executables directory to the PATH
export PATH=/opt/render/ruby/2.5.0/bin:$PATH

gem install bundler -v 2.2.28 --user-install

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate


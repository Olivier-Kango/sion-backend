#!/usr/bin/env bash
# exit on error
set -o errexit

# Update Ruby version
ruby_version="3.1.3"

# Add the gem executables directory to the PATH
export PATH=/opt/render/ruby/2.5.0/bin:$PATH

gem install bundler -v 2.2.28 --user-install

~/.gem/ruby/2.5.0/bin/bundle install
~/.gem/ruby/2.5.0/bin/bundle exec rake assets:precompile
~/.gem/ruby/2.5.0/bin/bundle exec rake assets:clean
~/.gem/ruby/2.5.0/bin/bundle exec rake db:migrate

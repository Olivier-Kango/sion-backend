#!/usr/bin/env bash
# exit on error
set -o errexit

# Update Ruby version
ruby_version="3.1.3"

# Add the gem executables directory to the PATH
export PATH=/opt/render/ruby/3.1.3/bin:$PATH

gem install bundler -v 2.4.10 --user-install

~/.gem/ruby/3.1.3/bin/bundle install
~/.gem/ruby/3.1.3/bin/bundle exec rake assets:precompile
~/.gem/ruby/3.1.3/bin/bundle exec rake assets:clean
~/.gem/ruby/3.1.3/bin/bundle exec rake db:migrate

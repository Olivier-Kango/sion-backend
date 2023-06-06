#!/usr/bin/env bash
# exit on error
set -o errexit

/c/Ruby31-x64/bin/bundle install
/c/Ruby31-x64/bin/bundle exec rake assets:precompile
/c/Ruby31-x64/bin/bundle exec rake assets:clean
/c/Ruby31-x64/bin/bundle exec rake db:migrate

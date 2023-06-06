#!/usr/bin/env bash
# exit on error
set -o errexit

# Specify a different writable directory
export GEM_HOME="/tmp/vendor/bundle"

gem install bundler -v 2.3.26
bundle _2.3.26_ install --path "${GEM_HOME}"
bundle _2.3.26_ exec rails assets:precompile
bundle _2.3.26_ exec rails assets:clean
bundle _2.3.26_ exec rails db:migrate

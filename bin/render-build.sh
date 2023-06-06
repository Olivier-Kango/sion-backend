#!/usr/bin/env bash
# exit on error
set -o errexit

# Specify custom gem installation directory
export GEM_HOME="/tmp/vendor/bundle"
export BUNDLE_PATH="${GEM_HOME}"

gem install bundler -v 2.3.26
bundle _2.3.26_ install --path "${GEM_HOME}"
bundle _2.3.26_ exec rails assets:precompile
bundle _2.3.26_ exec rails assets:clean
bundle _2.3.26_ exec rails db:migrate

#!/usr/bin/env bash
# exit on error
set -o errexit

# Upgrade RubyGems
gem update --system 3.2.3

# Specify custom gem installation directory
export GEM_HOME="/tmp/vendor/bundle"
export BUNDLE_PATH="${GEM_HOME}"

# Set the bundle path
bundle config set --local path "${GEM_HOME}"

gem install bundler -v 2.3.26

# Add the directory containing the Bundler executable to the PATH
export PATH="${GEM_HOME}/bin:${PATH}"

bundle _2.3.26_ install
bundle _2.3.26_ exec rails assets:precompile
bundle _2.3.26_ exec rails assets:clean
bundle _2.3.26_ exec rails db:migrate

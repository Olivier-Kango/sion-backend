#!/usr/bin/env bash
# exit on error
set -o errexit

gem install bundler -v 2.3.26
bundle _2.3.26_ install
bundle _2.3.26_ exec rails assets:precompile
bundle _2.3.26_ exec rails assets:clean
bundle _2.3.26_ exec rails db:migrate

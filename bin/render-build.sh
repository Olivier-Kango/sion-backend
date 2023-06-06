#!/usr/bin/env bash
# exit on error
set -o errexit

# Set the installation directory for chruby
CHRUBY_INSTALL_DIR="$HOME/.chruby"

# Install chruby
curl -sL https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz | tar -xz
cd chruby-0.3.9/
make install PREFIX="$CHRUBY_INSTALL_DIR"

# Add chruby to the shell configuration
echo 'source "$HOME/.chruby/share/chruby/chruby.sh"' >> "$HOME/.bashrc"
echo 'source "$HOME/.chruby/share/chruby/auto.sh"' >> "$HOME/.bashrc"

# Reload the shell configuration
source "$HOME/.bashrc"

# Switch to a specific Ruby version using chruby
chruby 2.7.4

# Install Bundler for the selected Ruby version
gem install bundler -v 2.4.10 --user-install

# Run bundle install and other commands
bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate

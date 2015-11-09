#!/bin/bash

echo "Adding extra apt repositories for Ruby binaries"
sudo apt-get install --yes software-properties-common
sudo apt-add-repository --yes ppa:brightbox/ruby-ng
sudo apt-get update --yes

echo "Installing Ruby 2.2"
sudo apt-get install --yes ruby2.2 ruby2.2-dev build-essential zlib1g-dev

echo "Installing ruby-switch"
sudo apt-get install --yes ruby-switch

echo "Make Ruby 2.2 the default"
sudo ruby-switch --set ruby2.2

echo "Installing bundler"
sudo gem install bundler

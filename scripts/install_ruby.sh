#!/usr/bin/env bash
# install Ruby
sudo apt-get update
sudo apt-get -y upgrade
sudo apt install gnupg2
gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804B 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm requirements
rvm install 2.4.1
rvm use 2.4.1 --default
gem install bundler

echo "  ----- version -----  "
ruby -v
bundle -v

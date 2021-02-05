#!/usr/bin/env bash
# Deploy App

echo "  ----- clone application repository -----  "
git clone https://github.com/Artemmkin/reddit.git

export PATH=~/.rvm/gems/ruby-2.4.1/bin:$PATH
source ~/.bash_profile

echo "  ----- install dependent gems -----  "
cd ./reddit && bundle install
puma -d
ps aux | grep puma

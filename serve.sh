#!/bin/bash

# installs bundle if not installed
if ! [ -x "$(command -v bundle)" ]; then
	gem install bundle
fi

bundle install
echo 'if this script blew up on you, make sure you have a ruby installed for your current user.'

bundle exec jekyll serve --baseurl '/columbus-2018-fall'

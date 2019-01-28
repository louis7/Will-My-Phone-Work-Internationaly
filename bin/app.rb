#!/usr/bin/env ruby
#todo: this app scrape from frequencycheck for the contry bands. Turns out
# that site is a bit outdated
require_relative '../config/environment.rb'


new_session = Controller.new.call

require 'cucumber/formatter/unicode' # Remove this line if you don't want Cucumber Unicode support

require 'capybara/cucumber'
require 'capybara/session'

require 'mechwarrior/cucumber'

Capybara.default_selector = :css

Capybara.default_driver = :mechanize

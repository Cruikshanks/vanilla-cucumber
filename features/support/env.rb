# frozen_string_literal: true

require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "chromedriver-helper"

Capybara.app_host = "localhost:4567"

options = Selenium::WebDriver::Chrome::Options.new
# options.headless!

# Selenium::WebDriver.logger.level = :debug

# For future reference configuring Chrome via Selenium appears to be done
# use the options argument, which I understand is essentially passed by
# Capybara to Selenium-webdriver, which in turn passes it to chromium
# https://github.com/SeleniumHQ/selenium/wiki/Ruby-Bindings
# http://peter.sh/experiments/chromium-command-line-switches/
# https://www.chromium.org/developers/design-documents/network-settings
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: options
  )
end

Capybara.default_driver = :chrome
Capybara.javascript_driver = :chrome

# By default Capybara will try to boot a rack application automatically. This
# switches off Capybara's rack server as we are running against a remote
# application.
Capybara.run_server = false

# When calling save_and_open_page the current html page is saved to file for
# debug purposes. This can be done directly within a step or happens
# automatically in the event of an error when using the selenium driver.
# Not setting this leads to Capybara saving the file to the root of the project
# which can mess up your project structure.
Capybara.save_path = "tmp/"

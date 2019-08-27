# frozen_string_literal: true

source "https://rubygems.org"

# Cucumber is a tool for running automated tests written in plain language.
gem "cucumber", "~> 3.1"

# We use capybara to drive whichever browser we are using, and by drive we
# mean things like fill_in x, click_on y etc. Capybara makes it much easier to
# do this, though if you're willing to go a level lower you can write your own
# code to tell selenium how to interact with a web page
gem "capybara", "~> 3.14"

# We bring in rspec-expectations to simplify how to actually test if a page is
# correct. For example you can test you are on the right page in a step using
# expect(page).to have_text 'Welcome to test nirvana!'
gem "rspec-expectations", "~> 3.8"

# selenium-webdriver is used to drive real browsers that may be installed,
# for example Firefox, Chrome and Internet Explorer. The benefit of selenium
# is you can actually see the tests interacting with the browser, the downside
# is they run slower and isn't best suited to a CI environment.
gem "selenium-webdriver", "~> 3.14"

# Needed to use Chrome or Firefox for selenium tests. You can opt
# to install each driver separately. However in an effort to make using this
# gem as simple as possible we have gone with using webdrivers. To quote
# from it "Run Selenium tests more easily with automatic installation and
# updates for all supported webdrivers."
gem "webdrivers", "~> 4.0"

# Rake gives us the ability to create our own commands or 'tasks' for working
# with quke. We have it setup to start the demo app and to clear the /tmp for
# example. You could expand it to run particular config files, and if you have
# particular arguments you normally like to pass to Cucumber.
gem "rake"

gem "defra_ruby_style"

################################################################################
# The rest of the gems listed below are required by the demo app only. You can
# ignore them in your own Gemfile

# Sinatra is a DSL for quickly creating web applications in Ruby with minimal
# effort. We've used it for creating our embedded demo website
gem "sinatra"

# This groups covers gems which should be installed if you are actively working
# on Quke-example itself.
group :development do
  # To enable reloading of the app whilst working on it you can use Rerun
  # https://github.com/alexch/rerun
  # http://www.sinatrarb.com/faq.html#reloading
  # `rerun quke_demo_app/app.rb`
  # There is also a custom rake task as part of Quke to launch the demo app
  # which will use rerun if installed `bundle exec rake run`
  gem "rerun"
end

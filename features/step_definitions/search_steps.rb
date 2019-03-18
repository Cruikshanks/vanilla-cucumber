# frozen_string_literal: true

# The following steps use capybara directly to drive the browser
Given(/^I'm at the search page$/) do
  visit "http://localhost:4567/search"
  expect(page).to have_content("Search")
end

When(/^I enter "([^"]*)" into "([^"]*)"$/) do |value, field|
  fill_in field, with: value
  click_button("commit")
end

Then(/^I should get (\d+) results$/) do |num_of_results|
  expect(page.all(".result").size).to eq(Integer(num_of_results))
end

Then(/^see the following text "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end

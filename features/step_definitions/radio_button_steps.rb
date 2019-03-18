# frozen_string_literal: true

# The following steps use capybara directly to drive the browser
Given(/^I'm at the radio button page$/) do
  visit "http://localhost:4567/radiobutton"
  expect(page).to have_content("Radio button")
end

Then(/^I should get (\d+) options$/) do |num_of_results|
  expect(page.all("input[type=radio]").size).to eq(Integer(num_of_results))
end

Given(/^I select one of the options$/) do
  # This demonstrates reuse of a step. We want to ensure we can see options
  # before trying to select one, but rather than repeat the same expectation
  # we instead reuse the step that does this.
  step "I should get 5 options"
  choose("organisation_partnership")
  click_button("commit")
end

Then(/^I should my selection confirmed$/) do
  expect(find("span[id=result]").text).to end_with("Partnership")
end

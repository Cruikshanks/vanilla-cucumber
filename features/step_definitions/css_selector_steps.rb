# frozen_string_literal: true

# The following steps use capybara directly to drive the browser
# --------------------------------------------------------------

Given(/^I'm at the css selectors page$/) do
  visit "http://localhost:4567/cssselector"
  expect(page).to have_content("CSS selector")
end

Then(/^I can select all href links$/) do
  expect(page.all("a[href]")).not_to be_empty
end

Then(/^I can select all the radio buttons$/) do
  expect(page.all("input[type='radio']")).not_to be_empty
end

Then(/^I can select all the radio buttons and checkboxes$/) do
  pending
  expect(page.all("input[type~='radio checkbox']")).not_to be_empty
end

Then(/^I can select the about link$/) do
  expect(find("a[href*='about']").text).to eq("About")
end

Then(/^I can select the contact link$/) do
  expect(find("a[href^='/con']").text).to eq("Contact")
end

Then(/^I can select the continue button element$/) do
  expect(find("input[id$='mmit']").value).to eq("Continue")
end

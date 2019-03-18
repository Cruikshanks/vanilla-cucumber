Feature: Search
  To demonstrate how you can use Quke
  As a user of Quke
  I want to see how to fill in search form and check the results

  Scenario: Searching for known results
    Given I'm at the search page
     When I enter "capybara" into "search_input"
     Then I should get 2 results
      And see the following text "Capybara is a web-based test automation software"

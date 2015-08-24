Feature: YouTube has a search function.

Background:
  Given I am on YouTube

Scenario: Search for a term
  When I fill in "search_query" with "tinyowl "
  And I press "search-btn"
  Then I should see "tinyowl"

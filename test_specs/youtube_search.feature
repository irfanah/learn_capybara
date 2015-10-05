# P1 :Youtube searh with cucumber
Feature: YouTube has a search function.

Background:
  Given I am on YouTube

Scenario: verifiy search for a term on youtube
  When I fill in "search_query" with "tinyowl "
  Then I should see "tinyowl"

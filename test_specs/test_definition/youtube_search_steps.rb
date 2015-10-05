Given /^I am on (.+)$/ do |url|
  visit "http://www.youtube.com"
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
  click_button('search-btn')
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end

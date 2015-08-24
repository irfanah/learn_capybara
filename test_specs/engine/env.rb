require 'selenium-webdriver'
require 'capybara/cucumber'
require 'rspec/expectations'
 


Capybara.register_driver :chrome do |app|
     Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :chrome
#Capybara.javascript_driver = :chrome

require 'selenium-webdriver'
require 'capybara/cucumber'
require 'rspec/expectations'

Capybara.register_driver :firefox do |app|
     Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.default_driver = :firefox


#only for poltergeist
require 'capybara/poltergeist'

Capybara.register_driver :poltergeist do |app|
    options = { :js_errors => false,
                :timeout => 200,
                :debug => true,
                :inspector => true,
               }
   Capybara::Poltergeist::Driver.new(app, options)
end

# P1 :Youtube searh standalone

require 'capybara/dsl'
require 'rspec/expectations'

Capybara.default_driver = :selenium

module MyModule
  include Capybara::DSL
  include RSpec::Matchers

  def play_song
    visit "http://www.youtube.com"
    fill_in("search_query", :with => "tinyowl")
    page.should have_content("tinyowl")
  end
end

class Runner
include MyModule

  def run
    play_song
  end
end

Runner.new.run

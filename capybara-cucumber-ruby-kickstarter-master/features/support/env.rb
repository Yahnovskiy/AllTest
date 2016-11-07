require 'capybara'
require './lib/application_world'
require 'capybara/rspec'
require 'capybara'
require 'capybara/dsl'



# Capybara.register_driver(:chrome)   { |app| Capybara::Selenium::Driver.new(app, :browser => :chrome) }
Capybara.register_driver(:firefox)  { |app| Capybara::Selenium::Driver.new(app, :browser => :firefox) }

World(Capybara::DSL)

World do
  ApplicationWorld.new
end

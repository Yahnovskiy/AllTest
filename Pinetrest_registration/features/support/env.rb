require 'capybara/cucumber'
require 'capybara/dsl'
require 'capybara/rspec'
require 'rack'
require 'rspec'
require 'rspec/expectations'

World(Capybara::DSL)
Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 60
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)


end
Capybara.javascript_driver = :firefox

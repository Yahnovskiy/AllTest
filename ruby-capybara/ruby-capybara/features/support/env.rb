require 'rubygems'
require 'capybara'
require 'rspec'



require 'selenium-webdriver'
require 'cucumber'


Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.default_selector = :css

module Helpers
  def without_resynchronize
    page.driver.options[:resynchronize] = false
    yield
    page.driver.options[:resynchronize] = true
  end
end

World(Capybara::DSL, Helpers)
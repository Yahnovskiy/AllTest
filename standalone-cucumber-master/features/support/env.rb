# require 'capybara'
# require 'capybara/cucumber'
require 'rubygems'
#
# Capybara.configure do |config|
#   config.default_driver = :selenium
#   config.app_host   = 'http://www.google.com'
# end
# World(Capybara)
require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
# driver = Selenium::WebDriver.for :chrome
# driver = Selenium::WebDriver.for :internet_explorer
driver.navigate.to "http://google.com"

# element = driver.find_element(:name, 'q')
# element.send_keys "Hello WebDriver!"
# element.submit

# puts driver.title

# driver.quit
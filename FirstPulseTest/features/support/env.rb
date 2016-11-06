require 'rubygems'
require 'selenium-webdriver'
require 'capybara'
require 'rspec'
require 'rspec/expectations'
require 'minitest/autorun'
require 'minitest/unit'


#driver = Selenium::WebDriver.for :firefox
#driver.navigate.to "https://ru.pinterest.com/"
# profile = new.FirefoxProfile()
# profile.add_extension("C:/Users/Bigbubble/AppData/Roaming/Mozilla/Firefox/Profiles/48tqabvm.QAtest/extensions{firebug@software.joehewitt.com}.xpi");
# firefoxprofile.addExtension(addonpath)
# WebDriver driver = new.WebDriver(firefoxprofile)

# profile = Selenium::WebDriver::Firefox::Profile.new
# profile.add_extension("C:/Users/Bigbubble/AppData/Roaming/Mozilla/Firefox/Profiles/48tqabvm.QAtest/extensions/firebug@software.joehewitt.com.xpi")
#
# @driver = Selenium::WebDriver.for :firefox, :profile => profile

# File profileDir = new.File("C:\\Users\\yourUserName\\AppData\\Roaming\\Mozilla\\Firefox\\Profiles\\t8chq07l.selenium testing");
# FirefoxProfile profile = new FirefoxProfile(profileDir)
# @driver = new.FirefoxDriver(profile)
#
# FireFoxProfile profile = new FireFoxProfile();
# File extension = new File("C:/Users/Bigbubble/AppData/Roaming/Mozilla/Firefox/Profiles/48tqabvm.QAtest/extensions/firebug@software.joehewitt.com.xpi");
# profile.addExtension(extension);
#
# WebDriver @driver = new FireFoxDriver(profile);


Before('@web') do
  @driver = Selenium::WebDriver.for :firefox
end


After('@web') do
  @driver.quit
end

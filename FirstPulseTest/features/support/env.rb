#require 'calabash-cucumber/launcher'
require 'capybara'
#require 'capybara/poltergeist'
#Hooks Before and After to launch and stop web driver
Before('@portal,@web') do
  Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end

  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(app, {js_errors: false,
                                            timeout: 1000,
                                            phantomjs_options: [
                                                '--load-images=no',
                                                '--ignore-ssl-errors=yes',
                                                '--ssl-protocol=any']})
  end

#  Capybara.save_path = REPORTS_PATH
  Capybara.javascript_driver = :chrome
  Capybara.current_driver = :chrome
  Capybara.app_host = "http://www.example.com"
  Capybara.default_max_wait_time = 30
  Capybara.wait_on_first_by_default = true
  @session = Capybara.current_session
  #Capybara.reset_sessions!

#  if ui_browser?
#    @session.driver.browser.manage.delete_all_cookies
 #   @session.driver.browser.manage.window.maximize
    ##check platform, if platform mac os(darwin) resize window
  #  if RUBY_PLATFORM.include? 'darwin' then
  #    @session.driver.browser.manage.window.resize_to(1400, 900)
  #  end
 # end
end

After('@portal,@web') do |scenario|
  if scenario.failed?
    puts scenario
#    screenshot_path = @session.save_screenshot("FAILED_#{scenario.__id__}.png")
#    filename = File.basename(screenshot_path)
#    embed(screenshot_path, 'image/png', filename)
  end
  Capybara.reset_sessions!
end
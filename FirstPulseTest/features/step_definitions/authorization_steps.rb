Given(/^I am on "([^"]*)" site$/) do |arg|
  visit "https://ru.pinterest.com"

  # @driver.get("https://ru.pinterest.com")
  #driver.navigate.to "https://ru.pinterest.com/"
end

When(/^I input in login "([^"]*)"$/) do |login|
  page.fill_in 'Адрес эл. почты', :with => login
  # find(:css =>'.NameAgeGenderStep__tooltip>fieldset>input').send(arg)

  # send_keys arg
    # .native.send_key login_name
  # element = @driver.find_element(:xpath => 'html/body/div[1]/div/div[1]/div/div/div/div[2]/div/div[2]/div/div[2]/div[3]/div/form/div[1]/fieldset/input')
  # element.send_keys login_name
end

And(/^I input in password "([^"]*)"$/) do |password|

  page.fill_in 'Создать пароль', :with => password
  # element = @driver.find_element(:xpath => 'html/body/div[1]/div/div[1]/div/div/div/div[2]/div/div[2]/div/div[2]/div[3]/div/form/div[2]/fieldset/input')
  # element.send_keys password
end

And(/^I try to sign in$/) do
  find(:xpath, "/html/body/div[1]/div/div[1]/div/div/div/div[2]/div/div[2]/div/div[2]/div[3]/div/form/div[3]/button/div[1]").click
  # click_link_or_button(:xpath => '/html/body/div[1]/div/div[1]/div/div/div/div[2]/div/div[2]/div/div[2]/div[3]/div/form/div[3]/button/div[1]')
  # click_on 'Продолжить'
  # element = @driver.find_element(:xpath => '/html/body/div[1]/div/div[1]/div/div/div/div[2]/div/div[2]/div/div[2]/div[3]/div/form/div[3]/button/div[1]')
  # @driver.action.click.element

end


Then(/^Error Login message "([^"]*)" displays$/) do |message|


  expect(:xpath, "/html/body/div[1]/div/div[1]/div/div/div/div[2]/div/div[2]/div/div[2]/div[3]/div/form/div[1]/fieldset/div[1]/div[1]/span").should eql(message)
  # page.find(:xpath, "/html/body/div[1]/div/div[1]/div/div/div/div[2]/div/div[2]/div/div[2]/div[3]/div/form/div[1]/fieldset/div[1]/div[1]/span", :text => 'message').text
  # page.should have_xpath(:xpath,"/html/body/div[1]/div/div[1]/div/div/div/div[2]/div/div[2]/div/div[2]/div[3]/div/form/div[1]/fieldset/div[1]/div[1]/span", :text => message)
  # find(:xpath,=> '/html/body/div[1]/div/div[1]/div/div/div/div[2]/div/div[2]/div/div[2]/div[3]/div/form/div[1]/fieldset/div[1]/div[1]/span')

  # element = @driver.find_element(:xpath => '/html/body/div[1]/div/div[1]/div/div/div/div[2]/div/div[2]/div/div[2]/div[3]/div/form/div[1]/fieldset/div[1]/div[1]/span')

  # element if element.text.must_equal message
  # expect(element.text).to eq(message), "'#{element.text}' does not equal to #{message}"
  # element === message
end
# find image
# When(/^I should see images$/) do
#   element = @driver.find_element(:css => 'https://s-passets-cache-ak0.pinimg.com/webapp/style/app/common/images/inspired-desktop/bg_pasta_half-56323898.jpg')
#   expect(element).to have_css("img[src*='C:/Users/Bigbubble/Downloads/bg_pasta_half-56323898.jpg']")
# end
#
# # add to compare image
# Then(/^I compare image$/) do
#   element = @driver.find_element(:css => '')
#   expect(element).to have_css("img[src*='environ-peeling-kuur.jpg']")
# end


# end



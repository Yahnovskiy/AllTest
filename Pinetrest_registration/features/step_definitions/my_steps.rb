Given(/^I am on "([^"]*)" site$/) do |arg|
 visit "https://ru.pinterest.com"
end

When(/^I input in login "([^"]*)"$/) do |login|
  # page.fill_in 'username', :with => login
  find(:xpath, "//input[contains(@autocomplete,'username')]").set(login)
end

And(/^I input in password "([^"]*)"$/) do |pass|
  find(:xpath, "//input[contains(@autocomplete,'current-password')]").set(pass)
end

And(/^Perform login$/) do
  find(:xpath, "//button[contains(@class,'SignupButton')]").click
end

Then(/^Verify succesfful log in$/) do
  # expect(page).to have_content('Это ваша лента. Добро пожаловать! Нажмите на Пин, чтобы приблизить его.')

  expect(page).to have_xpath("//div[contains(@class,'usernameLink')]")

  # page.wait(:xpath, "//div[contains(@class,'usernameLink')]")
  # expect { post.reload.usernameLink? }.to become_true
end
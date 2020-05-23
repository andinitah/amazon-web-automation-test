# require 'selenium-webdriver'

# driver = Selenium::WebDriver.for:firefox

# Given /^Open the web "(.*?)"$/ do |site|
#     driver.get site
# end

# And /^Go to SignUp page$/ do
#     driver.find_element(:xpath, '//span[contains(text(),"Hello, Sign in")]').click
#     driver.find_element(:id,'createAccountSubmit').click
#     p "Page title is #{driver.title}"
# end

# When /^User fill the email field with "(.*?)"$/ do |account|
#     driver.find_element(:id,'ap_customer_name').click
#     driver.find_element(:id,'ap_customer_name').send_keys 'New User'
#     driver.find_element(:id,'ap_email').click
#     driver.find_element(:id,'ap_email').send_keys account
#     driver.find_element(:id,'ap_password').click
#     driver.find_element(:id,'ap_password').send_keys 'password'
#     driver.find_element(:id,'ap_password_check').click
#     driver.find_element(:id,'ap_password_check').send_keys 'password'
#     driver.find_element(:id,'continue').click
#     sleep(2)
# end

# Then /^Alert error "(.*?)" shown$/ do |errormsg|
#     confirm = driver.find_element(:class, 'a-alert-content')
#     confirm.text.include? errormsg
#     driver.save_screenshot ("screenshot.png")
#     p "Error message is  #{errormsg}"
# end

# And /^Take a screenshot "(.*?)"$/ do |validation|
#     driver.save_screenshot (validation)
# end
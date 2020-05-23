# require 'selenium-webdriver'

# driver = Selenium::WebDriver.for:firefox

# Given /^Open "(.*?)"$/ do |site|
#   driver.get site
# end

# And /^Go to SignIn page$/ do
#   driver.find_element(:xpath,'//span[contains(text(),"Hello, Sign in")]').click
#   p "Page title is #{driver.title}"
# end

# When /^User fill the field with "(.*?)"$/ do |account|
#   driver.find_element(:id,'ap_email').click
#   driver.find_element(:id,'ap_email').send_keys account
#   driver.find_element(:id,'continue').click
#   sleep(2)
# end

# Then /^Alert error "(.*)" appears$/ do |errormsg|
#   confirm = driver.find_element(:xpath, '//span[@class="a-list-item"]')
#   confirm.text.include? errormsg
# end

# And /^Take screenshot "(.*?)"$/ do |validation|
#     driver.save_screenshot (validation)
# end
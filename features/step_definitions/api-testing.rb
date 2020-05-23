require 'rest-client'
require 'json'

Given /^Get token to "([^\"]*)"$/ do |url|
  @token_response = RestClient.post url, {
    'username' => 'admin',
    'password' => 'password123',
}.to_json, {
  :content_type => :json,
  :accept => :json
}
end

When /^I send a POST request to "([^\"]*)"$/ do |url|
  @resp = RestClient.post url, {
    'firstname' => 'Jim',
    'lastname' => 'Brown',
    'totalprice' => 111,
    'depositpaid' => true,
    'bookingdates' => {
      'checkin' => '2018-01-01',
      'checkout' => '2019-01-01',
    },
    'additionalneeds' => 'Breakfast'}.to_json,
    {
      :content_type => :json,
      :accept =>:json }
  end

When /^Delete id "([^\"]*)" from "([^\"]*)"$/ do |id, url|
  responseToken = JSON.parse(@token_response.body)
  cookie = "token=%s" % [responseToken['token']]
  puts cookie
  urlWithId = "%s/%s" % [url, id]
  puts urlWithId
  @resp = RestClient.delete urlWithId, {
    :cookie => cookie,
    :authorization => 'Basic'
  }
end

Then /^the response status should be "([^\"]*)"$/ do |status|
  puts "response code : %d" % [@resp.code]
  puts "response body : %s" % [@resp.body]
  expect(@resp.code).to eq(status.to_i)
end
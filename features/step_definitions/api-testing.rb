require 'rest-client'

When /^I send a POST request to "(.*?)"$/ do |url|
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

Then /^the response status should be "([^\"]*)"$/ do |status|
  puts "response code : %d" % [@resp.code]
  puts "response body : %s" % [@resp.body]
  expect(@resp.code).to eq(status.to_i)
end
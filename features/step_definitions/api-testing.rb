require 'rest-client'


When /^I send a POST request to "(.*?)"$/ do |url|
begin
  resp = RestClient.post url, {
    'firstname' => 'Jim',
    'lastname' => 'Brown',
    'totalprice' => 111,
    'depositpaid' => true,
    'bookingdates' => {
      'checkin' => '2018-01-01',
      'checkout' => '2019-01-01',
    },
    'additionalneeds' => 'Breakfast'}.to_json,
    :content_type => :json, :accept =>:json
  rescue RestClient::Unauthorized, RestClient::Forbidden   => err
    puts 'Access denied'
    return err.response
  rescue RestClient::ImATeapot => err
    puts 'The server is a teapot! # RFC 2324'
    return err.response
  else
    puts 'It worked!'
    return resp
  end
end

Then /^show me the (unparsed)?\s?response$/ do |unparsed|
  if unparsed == 'unparsed'
    puts last_response.body
  elsif last_response.headers['Content-Type'] =~ /json/
    json_response = JSON.parse(last_response.body)
    puts JSON.pretty_generate(json_response)
  elsif last_response.headers['Content-Type'] =~ /xml/
    puts Nokogiri::XML(last_response.body)
  else
    puts last_response.headers
    puts last_response.body
  end
end

Then /^the response status should be 'd+'$/ do |status|
  expected = JSON.parse(json)
  actual = JSON.parse(last_response.body)
  if self.respond_to?(:expect)
    expect(last_response.status).to eq(status.to_i)
  else
    assert_equal status.to_i, last_response.status
  end
end
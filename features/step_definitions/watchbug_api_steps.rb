When(/^(GET|POST) '(.*)'$/) do |method,url|
 send(method.downcase,url)
end

Then(/^a (\d+) is received$/) do |arg|
expect(last_response.status).to eq(arg.to_i)
end

Then(/^the following JSON body should be received$/) do |json|
  expected_response = JSON.parse(json)
  actual_response = JSON.parse(last_response.body)
  expect(with_no_date_fields(actual_response)).to eq(with_no_date_fields(expected_response))
  expect(actual_response.keys.to_set.superset?(%w(updated_at created_at).to_set)).to be_truthy
end
def with_no_date_fields hash
  hash.select{|key,_| !key.to_s.match(/_at/)}
end

Then(/^Watchbug Web should receive a POST call '(.*)' with params$/) do|url,params|
  stub_request(:post,Rails.configuration.watchbug_web+url).with(body:eval(params))
end
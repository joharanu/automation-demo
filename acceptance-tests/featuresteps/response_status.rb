Then(/^the response code is (\d+)$/) do |status|
  expect("#{@response.code}").to eq(status)
end
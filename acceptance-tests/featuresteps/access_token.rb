require 'httparty'
require 'uri'

Given(/^I get the spotify token authentication$/) do
  url = $root_config[:url_token]
  puts url
  grant = Base64.encode64("#{$root_config[:client_id]}:#{$root_config[:client_secret]}").delete("\n")
  @response = HTTParty.post(url,:body => 'grant_type=client_credentials', headers: {:authorization=>"Basic #{grant}", "Content-Type" => "application/x-www-form-urlencoded"})
  puts @response
  @token=@response['access_token']
  puts @token
end

Given(/^I get the token authentication spotify$/) do
  require 'uri'
  require 'net/http'
  client_id="9da15797bfe94cae90187ed571b22a9a"
  client_secret="69a80bba61934260a290182828458424"
  url = URI("https://accounts.spotify.com/api/token")

  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Post.new(url)
  grant = Base64.encode64("#{client_id}:#{client_secret}").delete("\n")

  request["Authorization"] = "Basic #{grant}"
  request["cache-control"] = 'no-cache'
  request["postman-token"] = '761e2e11-18d8-da1f-55ef-b8542582a7f3'
  request["content-type"] = 'application/x-www-form-urlencoded'
  request.body = 'grant_type=client_credentials'

  response = http.request(request)
  puts response.read_body
end






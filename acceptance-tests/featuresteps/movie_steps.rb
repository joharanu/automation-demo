Given(/^I get the content of a movie (.*)$/) do |movieid|
  url = $root_config[:movie] + "?i=#{movieid}" + "&apikey=#{$root_config[:api_key]}"
  puts url
  @response = HTTParty.get(url, headers: {"Content-Type" => "application/json"})
  puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>The content is<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
  puts @response
end


Given(/^I check that the message is (.*)$/) do |contentmessage|
 expect(@response['Error']).to eq contentmessage
end




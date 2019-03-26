require 'time'

  Given (/^I wait for (\d+) seconds?$/) do |n|
    sleep(n.to_i)
  end


  Given (/^I retrieve the date of today$/) do
    @todaytime=Time.now.strftime("%Y-%m-%dT00:00:00.000Z")
    puts @todaytime
  end


  Given (/^I put time diff$/) do
    time1=Time.now
    step("I wait for 120 seconds")
    time2=Time.now
    puts time2
    puts time1
    diff=time2-time1
    puts diff
  end
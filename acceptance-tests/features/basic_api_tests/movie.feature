# to execute bundle exec cucumber --tags=@apitest
@apitest
Feature: api_tests.feature
#-------------------------------------------------------------------------------------------------#
#-------------------------------Orchestration basic Tests-----------------------------------------#
#-------------------------------------------------------------------------------------------------#


#----------------------------------- api test---------------------------------------------#


  @valid
  Scenario Outline: Check the 200 response with valid movieid
    Given I get the content of a movie <movieid>
    Then the response code is 200
    Examples:
    |movieid  |
    |tt3896198|


  @invalid
  Scenario Outline: Check the response error
    Given I get the content of a movie <movieid>
    Then the response code is 200
    And I check that the message is <message>
    Examples:
      |movieid               |message               |
      |                      |Something went wrong. |
      |234234_42423__F_F_F_F_|Incorrect IMDb ID.    |












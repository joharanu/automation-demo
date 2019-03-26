# to execute bundle exec cucumber  --tags=@test

Feature: api_tests.feature
#-------------------------------------------------------------------------------------------------#
#-------------------------------Orchestration basic Tests-----------------------------------------#
#-------------------------------------------------------------------------------------------------#


#----------------------------------- api test---------------------------------------------#


  @apitest @valid
  Scenario Outline: Check the 200 response with valid movieid
    Given I get the content of a movie <movieid>
    Then the response code is 200
    Examples:
    |movieid  |
    |tt3896198|




  @invalid
  Scenario Outline: Check the 400 response bad request - invalid id
    Given I get the content of a movie <movieid>
    Then the response code is 400
    And I check that the message is <message>
    Examples:
      |movieid               |message    |
      |                      |invalid id |
      |234234_42423__F_F_F_F_|invalid id |
      |______________________|invalid id |
      |//////////////////////|invalid id |
      |----------------------|invalid id |












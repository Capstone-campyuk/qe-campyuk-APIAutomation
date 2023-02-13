@Alifa
  Feature: Testing DELETE A CAMP as HOST
    As a host I want to delete my camp in the website

    Scenario: API DELETE A CAMP as HOST with VALID PATH, PARAMETER, AND TOKEN should return 204 No Content
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      And Set token to a method in delete camp
      Given Base URL is _ and set 1 as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      And Set camp_id to a method with "0" as jsonPath in delete camp
      Given Base URL, set token to bearer token, set parameter to camp_id
      When Set method to DELETE, set path to camps, and click send button
      Then API should return response 204
      And API should return body message "success delete camp"

    Scenario: API DELETE A CAMP as HOST with INVALID PARAMETER should return 404 Not Found
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      And Set token to a method in delete camp
      Given Base URL, set token to bearer token, set parameter to invalid camp_id
      When Set method to DELETE, set path to camps, and click send button
      Then API should return response 404
      And API should return body message "not found"

    Scenario: API DELETE A CAMP as HOST with INVALID TOKEN should return 204 No Content
      Given Base URL is _ and set 1 as parameter page camps
      When Set method to GET, Set path to camps, and click send button
      And Set camp_id to a method with "0" as jsonPath in delete camp
      Given Base URL, set token to bearer token with invalid token, set parameter to camp_id
      When Set method to DELETE, set path to camps, and click send button
      Then API should return response 401
      And API should return body message "invalid or expired jwt"

    Scenario: API DELETE A CAMP as HOST with EMPTY PARAMETER should return 204 No Content
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      And Set token to a method in delete camp
      Given Base URL, set token to bearer token, set parameter to empty camp_id
      When Set method to DELETE, set path to camps, and click send button
      Then API should return response 405
      And API should return body message "Method Not Allowed"
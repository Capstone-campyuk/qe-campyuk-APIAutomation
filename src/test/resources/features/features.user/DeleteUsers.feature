Feature: Testing DELETE USERS REST API

  @Campyuk #scenario 1
  Scenario: API DELETE USERS with VALID path AS USER
    Given Base URL is _ and input json body log in user
    When Set method to POST, Set path to login, and click send button
    Given Delete user with valid path and valid token
    When Send request Delete Users
    Then Should return status code 204
    And API should return body message "success delete profile"


  @Campyuk #scenario 2
  Scenario: API DELETE USERS with INVALID path AS USER
    Given Base URL is _ and input json body log in user
    When Set method to POST, Set path to login, and click send button
    Given Delete user with invalid path and valid token
    When Send request Delete Users with invalid path
    Then Should return status code 404
    Then API should return body message "query error, delete account fail"


Feature: Testing GET USERS REST API

  @Campyuk #scenario 1
  Scenario: API GET USERS with VALID path AS USER
    Given Base URL is _ and input json body log in user
    When Set method to POST, Set path to login, and click send button
    Given Get user with valid path and valid token
    When Send request Get Users
    Then Should return status code 200
    And API should return the right JSON Schema Users


  @Campyuk #scenario 2
  Scenario: API GET USERS with INVALID path AS USER
    Given Base URL is _ and input json body log in user
    When Set method to POST, Set path to login, and click send button
    Given Get user with invalid path and valid token
    When Send request Get Users invalid path
    Then Should return status code 404
    And API should return body message "data not found"


Feature: Testing GET REST API

  @Campyuk #scenario 1
  Scenario: API GET USERS with VALID path as GUEST
    Given Base URL is _ and input json body log in guest
    When Set method to POST, Set path to login, and click send button
    Given Get user with valid path and valid token
    When Send request Get Users
    Then Should return status code 200
    And API should return the right JSON Schema Users
    And API should return body message "success show profile"


  @Campyuk #scenario 2
  Scenario: API GET USERS with INVALID path as GUEST
    Given Base URL is _ and input json body log in guest
    When Set method to POST, Set path to login, and click send button
    Given Get user with invalid path and valid token
    When Send request Get Users invalid path
    Then Should return status code 404
    And API should return body message "Not Found"

    #------------------------------------

  @Campyuk #scenario 3
  Scenario: API GET USERS with VALID path AS HOST
    Given Base URL is _ and input json body log in host
    When Set method to POST, Set path to login, and click send button
    Given Get user with valid path and valid token
    When Send request Get Users
    Then Should return status code 200
    And API should return the right JSON Schema Users

  @Campyuk #scenario 4
  Scenario: API GET USERS with INVALID path AS HOST
    Given Base URL is _ and input json body log in host
    When Set method to POST, Set path to login, and click send button
    Given Get user with invalid path and valid token
    When Send request Get Users invalid path
    Then Should return status code 404
    And API should return body message "Not Found"


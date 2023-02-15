Feature: Testing POST BOOKING REST API

  @Campyuk #scenario 1
  Scenario: API POST BOOKING with VALID path as GUEST
    Given Base URL is _ and input json body log in "nesyaraaASGUEST" as username and "nesaandestra" as password
    When Set method to POST, Set path to login, and click send button
    Given Post booking with valid path and valid token
    When Send request Post booking valid path
    Then Should return status code 201
    And API should return body message "success booking"

  @Campyuk #scenario 2
  Scenario: API POST BOOKING with INVALID path as GUEST
    Given Base URL is _ and input json body log in "nesyaraaASGUEST" as username and "nesaandestra" as password
    When Set method to POST, Set path to login, and click send button
    Given Post booking with invalid path and valid token
    When Send request Post booking invalid path
    Then Should return status code 404
    And API should return body message "Not Found"

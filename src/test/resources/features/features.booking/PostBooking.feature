Feature: Testing POST BOOKING REST API

  @Campyuk #scenario 1
  Scenario: API POST BOOKING with VALID path AS USER
    Given Base URL is _ and input json body log in user
    When Set method to POST, Set path to login, and click send button
    Given Post booking with valid path and valid token
    When Send request Post booking valid path
    Then Should return status code 200
    And API should return the right JSON Schema Post Booking
    And API should return body message "success booking"

  @Campyuk #scenario 2
  Scenario: API POST BOOKING with INVALID path AS USER
    Given Base URL is _ and input json body log in user
    When Set method to POST, Set path to login, and click send button
    Given Post booking with invalid path and valid token
    When Send request Post booking invalid path
    Then Should return status code 200
    #And API should return body message "success booking"

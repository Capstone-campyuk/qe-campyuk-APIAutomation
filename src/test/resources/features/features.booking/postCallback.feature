Feature: Testing POST BOOKING CALLBACK REST API

  @Campyuk #scenario 1
  Scenario: API POST BOOKING CALLBACK with valid json as guest
    Given Base URL is _ and input json body log in guest
    When Set method to POST, Set path to login, and click send button
    Given Post booking callback valid json
    When Send request Post booking callback
    Then Should return status code 200
    And API should return body message "success update transaction"


  @Campyuk #scenario 2
  Scenario: API POST BOOKING CALLBACK with blank order_id as guest
    Given Base URL is _ and input json body log in guest
    When Set method to POST, Set path to login, and click send button
    Given Post booking callback with blank order_id
    When Send request Post booking callback
    Then Should return status code 404
    And API should return body message "booking not found"


  @Campyuk #scenario 2
  Scenario: API POST BOOKING CALLBACK as with blank status guest
    Given Base URL is _ and input json body log in guest
    When Set method to POST, Set path to login, and click send button
    Given Post booking callback with blank status
    When Send request Post booking callback
    Then Should return status code 404
    And API should return body message "booking not found"
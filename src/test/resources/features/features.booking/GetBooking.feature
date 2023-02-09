Feature: Testing GET BOOKING REST API

  @Campyuk #scenario 1
  Scenario: API GET BOOKING with VALID path AS USER
    Given Base URL is _ and input json body log in user
    When Set method to POST, Set path to login, and click send button
    Given Get booking with valid path and valid token
    When Send request Get booking valid path
    Then Should return status code 200
    And API should return the right JSON Schema Booking


  @Campyuk #scenario 2
  Scenario: API GET BOOKING with INVALID path AS USER
    Given Base URL is _ and input json body log in user
    When Set method to POST, Set path to login, and click send button
    Given Get booking with invalid path and valid token
    When Send request Get booking invalid path
    Then Should return status code 404
    And API should return body message "booking order not found"

  @Campyuk #scenario 3
  Scenario Outline: API GET BOOKING with VALID path, VALID id and VALID token AS USER
    Given Base URL is _ and input json body log in user
    When Set method to POST, Set path to login, and click send button
    Given Get booking with valid path, valid <id> and valid token
    When Send request Get booking valid id
    Then Should return status code 200
    And API should return body message "booking order not found"
    Examples:
      | id |
      | 1  |

  @Campyuk #scenario 4
  Scenario Outline: API GET BOOKING with VALID path, INVALID id and VALID token AS USER
    Given Base URL is _ and input json body log in user
    When Set method to POST, Set path to login, and click send button
    Given Get booking with valid path, invalid "<id>" and valid token
    When Send request Get booking invalid id
    Then Should return status code 404
    And API should return body message "booking order not found"
    Examples:
      | id |
      | 1  |

#--------------

  @Campyuk #scenario 5
  Scenario: API GET BOOKING with VALID path AS HOST
    #Given Base URL is _ and input json body log in user
    #When Set method to POST, Set path to login, and click send button
    Given Get booking with valid path and valid token
    When Send request Get booking valid path
    Then Should return status code 200
    And API should return the right JSON Schema Booking


  @Campyuk #scenario 6
  Scenario: API GET BOOKING with INVALID path AS HOST
    #Given Base URL is _ and input json body log in user
    #When Set method to POST, Set path to login, and click send button
    Given Get booking with invalid path and valid token
    When Send request Get booking invalid path
    Then Should return status code 404
    And API should return body message "booking order not found"

  @Campyuk #scenario 7
  Scenario Outline: API GET BOOKING with VALID path, VALID id and VALID token AS HOST
    #Given Base URL is _ and input json body log in user
    #When Set method to POST, Set path to login, and click send button
    Given Get booking with valid path, valid <id> and valid token
    When Send request Get booking valid id
    Then Should return status code 200
    And API should return body message "booking order not found"
    Examples:
      | id |
      | 1  |

  @Campyuk #scenario 8
  Scenario Outline: API GET BOOKING with VALID path, INVALID id and VALID token AS HOST
    #Given Base URL is _ and input json body log in user
    #When Set method to POST, Set path to login, and click send button
    Given Get booking with valid path, invalid "<id>" and valid token
    When Send request Get booking invalid id
    Then Should return status code 404
    And API should return body message "booking order not found"
    Examples:
      | id |
      | 1  |
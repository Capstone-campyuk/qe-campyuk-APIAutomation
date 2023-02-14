Feature: Testing POST ITEMS REST API

  @Campyuk #scenario 1
  Scenario: API POST ADD NEW ITEM as HOST with VALID path and body
    Given Base URL is _ and input json body log in host
    When Set method to POST, Set path to login, and click send button
    Given Post items with valid path and body
    When Send request Post Items
    Then Should return status code 201
    And API should return body message "success add new item"


  @Campyuk #scenario 2
  Scenario: API POST ADD NEW ITEM as HOST with INVALID path and body
    Given Base URL is _ and input json body log in host
    When Set method to POST, Set path to login, and click send button
    Given Post items with invalid path and body
    When Send request Post Items with invalid path
    Then Should return status code 404
    And API should return body message "Not Found"

  @Campyuk #scenario 3
  Scenario: API POST ADD NEW ITEM as HOST with VALID path but WITH EMPTY NAME IN BODY
    Given Base URL is _ and input json body log in host
    When Set method to POST, Set path to login, and click send button
    Given Post items with valid empty name in body
    When Send request Post Items
    Then Should return status code 400
    And API should return body message "Name input value is required"

  @Campyuk #scenario 4
  Scenario: API POST ADD NEW ITEM as HOST with VALID path but WITH EMPTY STOCK IN BODY
    Given Base URL is _ and input json body log in host
    When Set method to POST, Set path to login, and click send button
    Given Post items with valid empty stock in body
    When Send request Post Items
    Then Should return status code 400
    And API should return body message "wrong input format"

  @Campyuk #scenario 5
  Scenario: API POST ADD NEW ITEM as HOST with VALID path but WITH EMPTY PRICE IN BODY
    Given Base URL is _ and input json body log in host
    When Set method to POST, Set path to login, and click send button
    Given Post items with valid empty price in body
    When Send request Post Items
    Then Should return status code 400
    And API should return body message "wrong input format"
Feature: Testing DELETE ITEMS REST API

  @Campyuk #scenario 1
  Scenario Outline: API DELETE ITEMS as HOST with VALID path and VALID ID as HOST
    Given Base URL is _ and input json body log in host
    When Set method to POST, Set path to login, and click send button
    Given Delete items with Valid path, valid <id> and valid token
    When Send request Delete items valid id
    Then Should return status code 204
    Examples:
      | id  |
      | 241 |


  @Campyuk #scenario 2
  Scenario Outline: API DELETE ITEMS as HOST with valid path but INVALID id as HOST
    Given Base URL is _ and input json body log in host
    When Set method to POST, Set path to login, and click send button
    Given Delete items with Valid path, invalid "<id>" and valid token
    When Send request Delete items with invalid id
    Then Should return status code 404
    And API should return body message "not found"
    Examples:
      | id  |
      | ABC |

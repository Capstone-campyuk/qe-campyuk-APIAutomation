Feature: Testing DELETE ITEMS REST API

  @Campyuk #scenario 1
  Scenario Outline: API DELETE ITEMS as HOST with VALID path and VALID ID
    Given Base URL is _ and input json body log in host
    When Set method to POST, Set path to login, and click send button
    Given Delete items with Valid path, valid <id> and valid token
    When Send request Delete items valid id
    Then Should return status code 204
    And API should return body message "success delete item"
    Examples:
      | id |
      | 1  |


  @Campyuk #scenario 2
  Scenario Outline: API DELETE ITEMS as HOST with valid path but INVALID id
    Given Base URL is _ and input json body log in user
    When Set method to POST, Set path to login, and click send button
    Given Delete items with Valid path, invalid "<id>" and valid token
    When Send request Delete items with invalid id
    Then Should return status code 404
    And API should return body message "data not found"
    Examples:
      | id |
      | z  |

  @Campyuk #scenario 3
  Scenario: API DELETE ITEMS with VALID path AS HOST
    Given Base URL is _ and input json body log in user
    When Set method to POST, Set path to login, and click send button
    Given Delete items with valid path
    When Send request Delete Items with valid path
    Then Should return status code 204
    And API should return body message "success delete item"



  @Campyuk #scenario 4
  Scenario: API DELETE ITEMS with INVALID path AS HOST
    Given Base URL is _ and input json body log in user
    When Set method to POST, Set path to login, and click send button
    Given Delete items with invalid path
    When Send request Delete Items with invalid path
    Then Should return status code 404
    And API should return body message "data not found"

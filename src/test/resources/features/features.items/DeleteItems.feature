Feature: Testing DELETE ITEMS REST API

  @Campyuk #scenario 1
  Scenario Outline: API DELETE ITEMS as HOST with VALID path and parameter
    Given Delete items with valid <id>
    When Send request Delete items valid id
    Then Should return status code 204
    Examples:
      | id |
      | 1  |


  @Campyuk #scenario 2
  Scenario Outline: API DELETE ITEMS as HOST with valid path but INVALID parameter
    Given Delete items with invalid "<id>"
    When Send request Delete items with invalid id
    Then Should return status code 404
    Examples:
      | id |
      | z  |

  @Campyuk #scenario 3
  Scenario: API DELETE ITEMS with VALID path
    Given Delete items with valid path
    When Send request Delete Items with valid path
    Then Should return status code 204


  @Campyuk #scenario 4
  Scenario: API DELETE ITEMS with INVALID path
    Given Delete items with invalid path
    When Send request Delete Items with invalid path
    Then Should return status code 404

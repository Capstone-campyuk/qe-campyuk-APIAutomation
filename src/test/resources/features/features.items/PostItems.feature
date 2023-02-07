Feature: Testing POST ITEMS REST API

  @Campyuk #scenario 1
  Scenario Outline: API POST ADD NEW ITEM as HOST with VALID path and body
    Given Post items with valid <id>
    When Send request Post Items
    Then Should return status code 204
    Examples:
      | id |
      | 1  |


  @Campyuk #scenario 2
  Scenario Outline: API DELETE ITEMS as HOST with valid path but INVALID parameter
    Given Post items with invalid "<id>"
    When Send request Post Items with invalid id
    Then Should return status code 404
    Examples:
      | id |
      | z  |
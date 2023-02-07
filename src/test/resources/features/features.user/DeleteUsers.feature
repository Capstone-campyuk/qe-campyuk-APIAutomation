Feature: Testing DELETE USERS REST API

  @Campyuk #scenario 1
  Scenario: API DELETE USERS with VALID path
    Given Delete user with valid path and valid token
    When Send request Delete Users
    Then Should return status code 204


  @Campyuk #scenario 2
  Scenario: API DELETE USERS with INVALID path
    Given Delete user with invalid path
    When Send request Delete Users with invalid path
    Then Should return status code 404


  @Campyuk #scenario 3
  Scenario Outline: API DELETE USERS with VALID path and VALID id
    Given Delete user with valid token
    When Send request Delete Users with token
    Then Should return status code 404
    Examples:
      | id   |
      | 8491 |
      | 8423 |

  @Campyuk #scenario 4
  Scenario Outline: API DELETE USERS with VALID path and INVALID id
    Given Delete user with invalid "<id>"
    When Send request Delete Users with id
    Then Should return status code 404
    Examples:
      | id   |
      | 8491 |
      | 8423 |

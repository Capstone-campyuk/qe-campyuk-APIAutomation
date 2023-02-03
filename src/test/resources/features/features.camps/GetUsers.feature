Feature: Testing GET USERS REST API

  @Project
  Scenario Outline: API GET USERS with VALID path
    Given Get user with valid path
    When Send request Get Users
    Then Should return status code 200
    Examples:
      | id |
      | 1  |
      | 2  |


  @Project
  Scenario Outline: API GET USERS with INVALID path
    Given Get user with invalid path
    When Send request Get Users
    Then Should return status code 404
    Examples:
      | id   |
      | 8491 |
      | 8423 |

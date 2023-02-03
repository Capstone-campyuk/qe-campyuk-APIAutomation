Feature: Testing PUT USERS REST API

  @Project
  Scenario Outline: API PUT USERS with VALID path
    Given Put user with valid path
    When Send request Put Users
    Then Should return status code 200
    Examples:
      | id |
      | 1  |
      | 2  |


  @Project
  Scenario Outline: API GET USERS with INVALID path
    Given Put user with invalid path
    When Send request Put Users
    Then Should return status code 404
    Examples:
      | id   |
      | 8491 |
      | 8423 |

  @Project
  Scenario Outline: API PUT USERS with blank name
    Given Put user with blank name
    When Send request Put Users
    Then Should return status code 404
    Examples:
      | name |
      | 8491 |
      | 8423 |


  Scenario Outline: API PUT USERS with blank fullname
    Given Put user with blank fullname
    When Send request Put Users
    Then Should return status code 404
    Examples:
      | id   |
      | 8491 |
      | 8423 |


  Scenario Outline: API PUT USERS with blank password
    Given Put user with invalid blank password
    When Send request Put Users
    Then Should return status code 404
    Examples:
      | id   |
      | 8491 |
      | 8423 |



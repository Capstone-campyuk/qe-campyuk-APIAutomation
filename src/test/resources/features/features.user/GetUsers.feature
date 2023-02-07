Feature: Testing GET USERS REST API

  @Campyuk #scenario 1
  Scenario Outline: API GET USERS with VALID path
    Given Get user with valid path
    When Send request Get Users
    Then Should return status code 200
    Examples:
      | id |
      | 1  |
      | 2  |


  @Campyuk #scenario 2
  Scenario Outline: API GET USERS with INVALID path
    Given Get user with invalid path
    When Send request Get Users invalid path
    Then Should return status code 404
    Examples:
      | id   |
      | 8491 |
      | 8423 |

  @Campyuk #scenario 3
  Scenario Outline: API GET USERS with VALID path and VALID ID
    Given Get user with valid <id>
    When Send request Get Users with id
    Then Should return status code 200
    Examples:
      | id |
      | 1  |
      | 2  |

  @Campyuk #scenario 4
  Scenario Outline: API GET USERS with INVALID path and INVALID ID
    Given Get user with invalid "<id>"
    When Send request Get Users with id
    Then Should return status code 404
    Examples:
      | id    |
      | svsdv |
      | 8423  |


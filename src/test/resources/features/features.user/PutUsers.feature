Feature: Testing PUT USERS REST API


  @Campyuk #scenario 1
  Scenario: API PUT USERS with blank name AS USER
    Given Base URL is _ and input json body log in guest
    When Set method to POST, Set path to login, and click send button
    Given Put user with blank name and valid token
    When Send request Put Users
    Then Should return status code 400
    And API should return body message "data not found"


  @Campyuk #scenario 2
  Scenario Outline: API PUT USERS with blank fullname AS USER
    Given Base URL is _ and input json body log in guest
    When Set method to POST, Set path to login, and click send button
    Given Put user with blank fullname and valid token
    When Send request Put Users
    Then Should return status code 400
    And API should return body message "data not found"
    Examples:
      | id |
      | 1  |
      | 2  |

  @Campyuk #scenario 3
  Scenario Outline: API PUT USERS with blank password AS USER
    Given Base URL is _ and input json body log in user
    When Set method to POST, Set path to login, and click send button
    Given Put user with blank password and valid token
    When Send request Put Users
    Then Should return status code 400
    And API should return body message "data not found"
    Examples:
      | id |
      | 1  |
      | 2  |

  @Campyuk #scenario 4
  Scenario Outline: API PUT USERS with VALID path
    Given Base URL is _ and input json body log in user
    When Set method to POST, Set path to login, and click send button
    Given Put user with valid path and valid token
    When Send request Put Users
    Then Should return status code 200
    And API should return body message "Success update profile"

    Examples:
      | id |
      | 1  |
      | 2  |

  @Campyuk #scenario 5
  Scenario Outline: API PUT USERS with INVALID path
    Given Base URL is _ and input json body log in user
    When Set method to POST, Set path to login, and click send button
    Given Put user with invalid path and valid token
    When Send request Put Users invalid path
    Then Should return status code 404
    And API should return body message "Not Found"
    Examples:
      | id     |
      | jkbvad |
      | 2      |

  @Campyuk #scenario 6
  Scenario: API PUT USERS with blank email
    Given Base URL is _ and input json body log in user
    When Set method to POST, Set path to login, and click send button
    Given Put user with blank email and valid token
    When Send request Put Users
    Then Should return status code 400
    And API should return body message "bad request"


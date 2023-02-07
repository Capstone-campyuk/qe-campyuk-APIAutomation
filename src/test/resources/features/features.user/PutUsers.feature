Feature: Testing PUT USERS REST API


  @Campyuk #scenario 1
  Scenario Outline: API PUT USERS with blank name
    Given Put user with blank name with <id>
    When Send request Put Users
    Then Should return status code 400
    Examples:
      | id |
      | 1  |
      | 2  |

  @Campyuk #scenario 2
  Scenario Outline: API PUT USERS with blank fullname
    Given Put user with blank fullname with <id>
    When Send request Put Users
    Then Should return status code 400
    Examples:
      | id |
      | 1  |
      | 2  |

  @Campyuk #scenario 3
  Scenario Outline: API PUT USERS with blank password
    Given Put user with blank password with <id>
    When Send request Put Users
    Then Should return status code 400
    Examples:
      | id |
      | 1  |
      | 2  |

  @Campyuk #scenario 4
  Scenario Outline: API PUT USERS with VALID path AND VALID ID
    Given Put user with valid <id>
    When Send request Put Users
    Then Should return status code 200
    Examples:
      | id |
      | 1  |
      | 2  |

  @Campyuk #scenario 5
  Scenario Outline: API PUT USERS with VALID path AND INVALID ID
    Given Put user with invalid "<id>"
    When Send request Put Users
    Then Should return status code 404
    Examples:
      | id     |
      | jkbvad |
      | 2      |

  @Campyuk #scenario 6
  Scenario Outline: API PUT USERS with blank email
    Given Put user with blank email with <id>
    When Send request Put Users
    Then Should return status code 400
    Examples:
      | id |
      | 1  |
      | 2  |

Feature: Testing PUT BOOKING REST API

  @Campyuk #scenario 1
  Scenario Outline: API POST ACCEPT BOOKING with VALID id AS HOST
    Given Base URL is _ and input json body log in host
    When Set method to POST, Set path to login, and click send button
    Given Put booking with valid <id>
    When Send request Put accept booking valid id
    Then Should return status code 200
    And API should return body message "success accept booking"
    Examples:
      | id |
      | 142 |

  @Campyuk #scenario 2
  Scenario Outline: API POST ACCEPT BOOKING with INVALID id as HOST
    Given Base URL is _ and input json body log in host
    When Set method to POST, Set path to login, and click send button
    Given Put booking with invalid "<id>"
    When Send request Put accept booking invalid id
    Then Should return status code 404
    And API should return body message "not found"
    Examples:
      | id |
      | z  |

  @Campyuk #scenario 3
  Scenario Outline: API POST CANCELED BOOKING with VALID id as HOST
    Given Base URL is _ and input json body log in host
    When Set method to POST, Set path to login, and click send button
    Given Put booking with valid <id>
    When Send request Put cenceled booking valid id
    Then Should return status code 200
    And API should return body message "success cancel booking"
    Examples:
      | id  |
      | 143 |

  @Campyuk #scenario 4
  Scenario Outline: API POST CANCELED BOOKING with INVALID id AS HOST
    Given Base URL is _ and input json body log in host
    When Set method to POST, Set path to login, and click send button
    Given Put booking with invalid "<id>"
    When Send request Put cancel booking invalid id
    Then Should return status code 404
    And API should return body message "not found"
    Examples:
      | id |
      | z  |




#------------


  @Campyuk #scenario 5
  Scenario Outline: API POST CANCELED BOOKING with VALID id as GUEST
    Given Base URL is _ and input json body log in "nesyaraaASGUEST" as username and "nesaandestra" as password
    When Set method to POST, Set path to login, and click send button
    Given Put booking with valid <id>
    When Send request Put cenceled booking valid id
    Then Should return status code 200
    And API should return body message "success cancel booking"
    Examples:
      | id  |
      | 144 |

  @Campyuk #scenario 6
  Scenario Outline: API POST CANCELED BOOKING with INVALID id as GUEST
    Given Base URL is _ and input json body log in "nesyaraaASGUEST" as username and "nesaandestra" as password
    When Set method to POST, Set path to login, and click send button
    Given Put booking with invalid "<id>"
    When Send request Put cancel booking invalid id
    Then Should return status code 404
    And API should return body message "not found"
    Examples:
      | id |
      | z  |
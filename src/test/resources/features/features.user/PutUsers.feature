Feature: Testing PUT USERS REST API


  @Campyuk #scenario 1
  Scenario: API PUT USERS with VALID path as GUEST
    Given Base URL is _ and input json body log in put guest
    When Set method to POST, Set path to login, and click send button
    Given Put user with valid path and valid token
    When Send request Put Users
    Then Should return status code 200
    And API should return body message "success update profile"


  @Campyuk #scenario 2
  Scenario: API PUT USERS with INVALID path as GUEST
    Given Base URL is _ and input json body log in put guest
    When Set method to POST, Set path to login, and click send button
    Given Put user with invalid path and valid token
    When Send request Put Users invalid path
    Then Should return status code 404
    And API should return body message "Not Found"


  @Campyuk #scenario 3
  Scenario: API PUT USERS with blank name as GUEST
    Given Base URL is _ and input json body log in put guest
    When Set method to POST, Set path to login, and click send button
    Given Put user with blank name and valid token
    When Send request Put Users
    Then Should return status code 200
    And API should return body message "success update profile"


  @Campyuk #scenario 4
  Scenario: API PUT USERS with blank fullname as GUEST
    Given Base URL is _ and input json body log in put guest
    When Set method to POST, Set path to login, and click send button
    Given Put user with blank fullname and valid token
    When Send request Put Users
    Then Should return status code 200
    And API should return body message "success update profile"


  @Campyuk #scenario 5
  Scenario: API PUT USERS with blank password as GUEST
    Given Base URL is _ and input json body log in put guest
    When Set method to POST, Set path to login, and click send button
    Given Put user with blank password and valid token
    When Send request Put Users
    Then Should return status code 200
    And API should return body message "success update profile"


  @Campyuk #scenario 6
  Scenario: API PUT USERS with blank email as GUEST
    Given Base URL is _ and input json body log in put guest
    When Set method to POST, Set path to login, and click send button
    Given Put user with blank email and valid token
    When Send request Put Users
    Then Should return status code 200
    And API should return body message "success update profile"


  @Campyuk #scenario 7
  Scenario: API PUT USERS with blank photo as GUEST
    Given Base URL is _ and input json body log in put guest
    When Set method to POST, Set path to login, and click send button
    Given Put user with blank photo and valid token
    When Send request Put Users
    Then Should return status code 200
    And API should return body message "success update profile"



    #---------------------------------



  @Campyuk #scenario 8
  Scenario: API PUT HOST with VALID path as HOST
    Given Base URL is _ and input json body log in put host
    When Set method to POST, Set path to login, and click send button
    Given Put HOST with valid path and valid token
    When Send request Put Users
    Then Should return status code 200
    And API should return body message "success update profile"


  @Campyuk #scenario 9
  Scenario: API PUT HOST with INVALID path
    Given Base URL is _ and input json body log in put host
    When Set method to POST, Set path to login, and click send button
    Given Put HOST with invalid path and valid token
    When Send request Put Users invalid path
    Then Should return status code 404
    And API should return body message "Not Found"

  @Campyuk #scenario 10
  Scenario: API PUT HOST with blank name as HOST
    Given Base URL is _ and input json body log in put host
    When Set method to POST, Set path to login, and click send button
    Given Put HOST with blank name and valid token
    When Send request Put Users
    Then Should return status code 200
    And API should return body message "success update profile"


  @Campyuk #scenario 11
  Scenario: API PUT HOST with blank fullname as HOST
    Given Base URL is _ and input json body log in put host
    When Set method to POST, Set path to login, and click send button
    Given Put HOST with blank fullname and valid token
    When Send request Put Users
    Then Should return status code 200
    And API should return body message "success update profile"


  @Campyuk #scenario 12
  Scenario: API PUT HOST with blank password as HOST
    Given Base URL is _ and input json body log in put host
    When Set method to POST, Set path to login, and click send button
    Given Put HOST with blank password and valid token
    When Send request Put Users
    Then Should return status code 200
    And API should return body message "success update profile"


  @Campyuk #scenario 13
  Scenario: API PUT HOST with blank email as HOST
    Given Base URL is _ and input json body log in put host
    When Set method to POST, Set path to login, and click send button
    Given Put HOST with blank email and valid token
    When Send request Put Users
    Then Should return status code 200
    And API should return body message "success update profile"

  @Campyuk #scenario 14
  Scenario: API PUT USERS with blank photo as GUEST
    Given Base URL is _ and input json body log in put guest
    When Set method to POST, Set path to login, and click send button
    Given Put HOST with blank photo and valid token
    When Send request Put Users
    Then Should return status code 200
    And API should return body message "success update profile"


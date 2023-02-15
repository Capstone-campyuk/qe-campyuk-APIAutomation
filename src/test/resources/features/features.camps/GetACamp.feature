@Campyuk @Alifa
  Feature: Testing GET a camp
    As a user I want to get a camp on the website

    Scenario: API GET A CAMP as USER with VALID PATH should return response code 200 OK
      Given Base URL is _ and set 1 as parameter page camps
      When Set method to GET, Set path to camps, and click send button
      Given Base URL is _ and set "2" as jsonPath camp
      When Set method to GET, Set path to detail camp, and click send button
      Then Should return status code 200

    Scenario: API GET A CAMP as USER with VALID PATH should return response code 200 OK
      Given Base URL is _ and set 1 as parameter page camps
      When Set method to GET, Set path to camps, and click send button
      Given Base URL is _ and set "2" as jsonPath camp
      When Set method to GET, Set path to detail camp, and click send button
      Then API should return body id

    Scenario: API GET A CAMP as USER with VALID PATH should return response code 200 OK
      Given Base URL is _ and set 1 as parameter page camps
      When Set method to GET, Set path to camps, and click send button
      Given Base URL is _ and set "2" as jsonPath camp
      When Set method to GET, Set path to detail camp, and click send button
      Then API should return body message "success show detail camp"

    Scenario: API GET A CAMP as GUEST with VALID PATH should return response code 200 OK
      Given Base URL is _ and input json body log in "testingmuser1" as username and "test123" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ and set 1 as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      Given Base URL is _ and set "2" as jsonPath camp
      When Set method to GET, Set path to detail camp, and click send button
      Then Should return status code 200

    Scenario: API GET A CAMP as GUEST with VALID PATH should return response code 200 OK
      Given Base URL is _ and input json body log in "testingmuser1" as username and "test123" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ and set 1 as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      Given Base URL is _ and set "2" as jsonPath camp
      When Set method to GET, Set path to detail camp, and click send button
      Then API should return body id

    Scenario: API GET A CAMP as GUEST with VALID PATH should return response code 200 OK
      Given Base URL is _ and input json body log in "testingmuser1" as username and "test123" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ and set 1 as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      Given Base URL is _ and set "2" as jsonPath camp
      When Set method to GET, Set path to detail camp, and click send button
      Then API should return body message "success show detail camp"

    Scenario: API GET A CAMP as HOST with VALID PATH should return response code 200 OK
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ and set 1 as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      Given Base URL is _ and set "2" as jsonPath camp
      When Set method to GET, Set path to detail camp, and click send button
      Then Should return status code 200

    Scenario: API GET A CAMP as HOST with VALID PATH should return response code 200 OK
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ and set 1 as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      Given Base URL is _ and set "2" as jsonPath camp
      When Set method to GET, Set path to detail camp, and click send button
      Then API should return body id

    Scenario: API GET A CAMP as HOST with VALID PATH should return response code 200 OK
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ and set 1 as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      Given Base URL is _ and set "2" as jsonPath camp
      When Set method to GET, Set path to detail camp, and click send button
      Then API should return body message "success show detail camp"

    Scenario: API GET A CAMP as ADMIN with VALID PATH should return response code 200 OK
      Given Base URL is _ and input json body log in "admin" as username and "admin" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ and set 1 as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      Given Base URL is _ and set "2" as jsonPath camp
      When Set method to GET, Set path to detail camp, and click send button
      Then Should return status code 200

    Scenario: API GET A CAMP as ADMIN with VALID PATH should return response code 200 OK
      Given Base URL is _ and input json body log in "admin" as username and "admin" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ and set 1 as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      Given Base URL is _ and set "2" as jsonPath camp
      When Set method to GET, Set path to detail camp, and click send button
      Then API should return body id

    Scenario: API GET A CAMP as ADMIN with VALID PATH should return response code 200 OK
      Given Base URL is _ and input json body log in "admin" as username and "admin" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ and set 1 as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      Given Base URL is _ and set "2" as jsonPath camp
      When Set method to GET, Set path to detail camp, and click send button
      Then API should return body verification_status "PENDING"

    Scenario: API GET A CAMP as ADMIN with VALID PATH should return response code 200 OK
      Given Base URL is _ and input json body log in "admin" as username and "admin" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ and set 1 as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      Given Base URL is _ and set "2" as jsonPath camp
      When Set method to GET, Set path to detail camp, and click send button
      Then API should return body message "success show detail camp"

    Scenario Outline: API GET A CAMP as USER with INVALID PATH should return response code 404 Not Found
      Given Base URL is _ and set invalid path camp <id>
      When Set method to GET, Set path to detail camp, and click send button
      Then Should return status code 404
    Examples:
      | id     |
      | cjdkcb |
      | 56738  |

#    Scenario Outline: API GET A CAMP as USER with INVALID PATH should return response code 404 Not Found
#      Given Base URL is _ and set invalid path camp <id>
#      When Set method to GET, Set path to detail camp, and click send button
#      Then API should return body message "not found"
#    Examples:
#      | id     |
#      | cjdkcb |
#      | 56738  |


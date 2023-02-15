@Campyuk
  Feature: Testing POST Login as User REST API
    As a user I want to log in to my account to access the website

    Scenario: API POST LOGIN as GUEST with VALID path should success then return 200 Ok response code
      Given Base URL is _ and input json body log in "testingmuser1" as username and "test123" as password
      When Set method to POST, Set path to login, and click send button
      Then API should return response 200

    Scenario: API POST LOGIN as GUEST with VALID path should success then return 200 Ok response code
      Given Base URL is _ and input json body log in "testingmuser1" as username and "test123" as password
      When Set method to POST, Set path to login, and click send button
      Then API should return body email "testingmuser1@gmail.com"

    Scenario: API POST LOGIN as GUEST with VALID path should success then return 200 Ok response code
      Given Base URL is _ and input json body log in "testingmuser1" as username and "test123" as password
      When Set method to POST, Set path to login, and click send button
      Then API should return body message "success login"

    Scenario: API POST LOGIN as GUEST with VALID path should success then return 200 Ok response code
      Given Base URL is _ and input json body log in "testingmuser1" as username and "test123" as password
      When Set method to POST, Set path to login, and click send button
      Then API should return body token is not null

    Scenario: API POST LOGIN as GUEST with VALID path should success then return 200 Ok response code
      Given Base URL is _ and input json body log in "testingmuser1" as username and "test123" as password
      When Set method to POST, Set path to login, and click send button
      Then API should return the right JSON Schema log in user

    Scenario:  API POST LOGIN as HOST with VALID path should success then return 200 Ok response code
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Then API should return response 200
      And API should return body email "testingmhost2@gmail.com"
      And API should return body message "success login"
      And API should return body token is not null
      And API should return the right JSON Schema log in user

    Scenario: API POST LOGIN as ADMIN with VALID path should success then return 200 Ok response code
      Given Base URL is _ and input json body log in "admin" as username and "admin" as password
      When Set method to POST, Set path to login, and click send button
      Then API should return response 200
      And API should return body email "admin@campyuk.com"
      And API should return body message "success login"
      And API should return body token is not null
      And API should return the right JSON Schema log in user

    Scenario: API POST LOGIN as GUEST with blank username should success then return 400 Bad Request response code
      Given Base URL is _ and input json body log in "" as username and "test123" as password
      When Set method to POST, Set path to login, and click send button
      Then API should return response 400

    Scenario: API POST LOGIN as GUEST with blank username should success then return 400 Bad Request response code
      Given Base URL is _ and input json body log in "" as username and "test123" as password
      When Set method to POST, Set path to login, and click send button
      Then API should return body message "username is empty"

    Scenario: API POST LOGIN as GUEST with blank password should success then return 400 Bad Request response code
      Given Base URL is _ and input json body log in "testingmuser1" as username and "" as password
      When Set method to POST, Set path to login, and click send button
      Then API should return response 400

    Scenario: API POST LOGIN as GUEST with blank password should success then return the right message
      Given Base URL is _ and input json body log in "testingmuser1" as username and "" as password
      When Set method to POST, Set path to login, and click send button
      Then API should return body message "password is empty"

    Scenario: API POST LOGIN as GUEST with INVALID path should success then return 404 Not Found response code
      Given Base URL is _ and input json body log in "testingmuser1" as username and "test123" as password
      When Set method to POST, Set path to loginbkjgkhGY, and click send button
      Then API should return response 400

    Scenario: API POST LOGIN as GUEST with INVALID path should success then return the right message
      Given Base URL is _ and input json body log in "testingmuser1" as username and "test123" as password
      When Set method to POST, Set path to loginbkjgkhGY, and click send button
      Then API should return body message "Not Found"
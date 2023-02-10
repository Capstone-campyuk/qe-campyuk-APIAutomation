@Campyuk
  Feature: Testing POST Login as User REST API
    As a user I want to log in to my account to access the website

    Scenario: API POST LOGIN as GUEST with VALID path should success then return 200 Ok response code
      Given Base URL is _ and input json body log in guest
      When Set method to POST, Set path to login, and click send button
      Then API should return response 200
      And API should return body email "testingmuser1@gmail.com"
      And API should return body message "success login"
      And API should return body token is not null
      And API should return the right JSON Schema log in user

    Scenario:  API POST LOGIN as HOST with VALID path should success then return 200 Ok response code
      Given Base URL is _ and input json body log in host
      When Set method to POST, Set path to login, and click send button
      Then API should return response 200
      And API should return body email "testingmhost2@gmail.com"
      And API should return body message "success login"
      And API should return body token is not null
      And API should return the right JSON Schema log in user

    Scenario: API POST LOGIN as ADMIN with VALID path should success then return 200 Ok response code
      Given Base URL is _ and input json body log in admin
      When Set method to POST, Set path to login, and click send button
      Then API should return response 200
      And API should return body email "admin@campyuk.com"
      And API should return body message "success login"
      And API should return body token is not null
      And API should return the right JSON Schema log in user

    Scenario:  API POST LOGIN as GUEST for PUT UPDATE USER
      Given Base URL is _ and input json body log in put guest
      When Set method to POST, Set path to login, and click send button
      Then API should return response 200
      And API should return body email "testingputuser2@gmail.com"
      And API should return body message "success login"
      And API should return body token is not null
      And API should return the right JSON Schema log in user

    Scenario:  API POST LOGIN as GUEST for DELETE USER
      Given Base URL is _ and input json body log in delete guest
      When Set method to POST, Set path to login, and click send button
      Then API should return response 200
      And API should return body email "testingdeleteuser1@gmail.com"
      And API should return body message "success login"
      And API should return body token is not null
      And API should return the right JSON Schema log in user

    Scenario:  API POST LOGIN as GUEST for PUT UPDATE HOST
      Given Base URL is _ and input json body log in put host
      When Set method to POST, Set path to login, and click send button
      Then API should return response 200
      And API should return body message "success login"
      And API should return body token is not null
      And API should return the right JSON Schema log in user

    Scenario:  API POST LOGIN as GUEST for DELETE HOST
      Given Base URL is _ and input json body log in delete host
      When Set method to POST, Set path to login, and click send button
      Then API should return response 200
      And API should return body email "testingdeletehost1@gmail.com"
      And API should return body message "success login"
      And API should return body token is not null
      And API should return the right JSON Schema log in user

    Scenario: API POST LOGIN as USER with blank username should success then return 400 Bad Request response code
      Given Base URL is _ and input json body log in user with empty username
      When Set method to POST, Set path to login, and click send button
      Then API should return response 400

    Scenario: API POST LOGIN as USER with blank username should success then return 400 Bad Request response code
      Given Base URL is _ and input json body log in user with empty username
      When Set method to POST, Set path to login, and click send button
      Then API should return body message "bad request"

    Scenario: API POST LOGIN as USER with blank password should success then return 400 Bad Request response code
      Given Base URL is _ and input json body log in user with empty password
      When Set method to POST, Set path to login, and click send button
      Then API should return response 400

    Scenario: API POST LOGIN as USER with blank password should success then return the right message
      Given Base URL is _ and input json body log in user with empty password
      When Set method to POST, Set path to login, and click send button
      Then API should return body message "bad request"

    Scenario: API POST LOGIN as USER with INVALID path should success then return 404 Not Found response code
      Given Base URL is _ and input json body log in user
      When Set method to POST, Set path to loginbkjgkhGY, and click send button
      Then API should return response 400

    Scenario: API POST LOGIN as USER with INVALID path should success then return the right message
      Given Base URL is _ and input json body log in user
      When Set method to POST, Set path to loginbkjgkhGY, and click send button
      Then API should return body message "page not found"
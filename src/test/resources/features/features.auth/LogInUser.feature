@Campyuk
  Feature: Testing POST Login as User REST API
    As a user I want to log in to my account to access the website

    Scenario: API POST LOGIN as USER with VALID path should success then return 200 Ok response code
      Given Base URL is _ and input json body log in user
      When Set method to POST, Set path to login, and click send button
      Then API should return response 200

    Scenario: API POST LOGIN as USER with VALID path should success then return the right email
      Given Base URL is _ and input json body log in user
      When Set method to POST, Set path to login, and click send button
      Then API should return body email "grf@gmail.com"

    Scenario: API POST LOGIN as USER with VALID path should success then return the right message
      Given Base URL is _ and input json body log in user
      When Set method to POST, Set path to login, and click send button
      Then API should return body message "success login"

    Scenario: API POST LOGIN as USER with VALID path should success then return not null token
      Given Base URL is _ and input json body log in user
      When Set method to POST, Set path to login, and click send button
      Then API should return body token is not null

    Scenario: API POST LOGIN as USER with VALID path should success then return the right JSON Schema
      Given Base URL is _ and input json body log in user
      When Set method to POST, Set path to login, and click send button
      Then API should return the right JSON Schema log in user

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
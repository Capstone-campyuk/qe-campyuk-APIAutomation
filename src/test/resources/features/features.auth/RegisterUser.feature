@Campyuk
  Feature: Testing POST Register as User REST API
    As a user I want to register an account to access the website

    Scenario: API POST REGISTER as USER with VALID path should success then return 201 Created response code
      Given Base URL is _ and input json body
      When Set method to POST, set path to register, and click send button
      Then API should return response 201
      And API should return body message "success create account"

    Scenario: API POST REGISTER as USER for DELETE USER
      Given Base URL is _ and input json body for delete user
      When Set method to POST, set path to register, and click send button
      Then API should return response 201
      And API should return body message "success create account"

    Scenario: API POST REGISTER as USER for DELETE HOST
      Given Base URL is _ and input json body for delete host
      When Set method to POST, set path to register, and click send button
      Then API should return response 201
      And API should return body message "success create account"

    Scenario: API POST REGISTER as USER with INVALID path should success then return 404 Not Found response code
      Given Base URL is _ and input json body
      When Set method to POST, set path to registerBADFHABD, and click send button
      Then API should return response 404
      And API should return body message "Not Found"

    Scenario: API POST REGISTER as USER with blank username should success then return 400 Bad Request response code
      Given Base URL is _ and input json body with empty username
      When Set method to POST, set path to register, and click send button
      Then API should return response 400
      And API should return body message "bad request"

    Scenario: API POST REGISTER as USER with blank fullname should success then return 400 Bad Request response code
      Given Base URL is _ and input json body with empty fullname
      When Set method to POST, set path to register, and click send button
      Then API should return response 400
      And API should return body message "bad request"

    Scenario: API POST REGISTER as USER with blank email should success then return 400 Bad Request response code
      Given Base URL is _ and input json body with email
      When Set method to POST, set path to register, and click send button
      Then API should return response 400
      And API should return body message "bad request"

    Scenario: API POST REGISTER as USER with blank password should success then return 400 Bad Request response code
      Given Base URL is _ and input json body with empty password
      When Set method to POST, set path to register, and click send button
      Then API should return response 400
      And API should return body message "bad request"

    Scenario: API POST REGISTER as USER with blank role should success then return 400 Bad Request response code
      Given Base URL is _ and input json body with empty role
      When Set method to POST, set path to register, and click send button
      Then API should return response 400
      And API should return body message "bad request"
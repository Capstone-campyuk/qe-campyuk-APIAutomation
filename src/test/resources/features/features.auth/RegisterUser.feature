@Campyuk @Alifa
  Feature: Testing POST Register as User REST API
    As a user I want to register an account to access the website

    Scenario: API POST REGISTER as USER with VALID path should success then return 201 Created response code
      Given Base URL is _ and input json body "testinghost3" as username, "Testing Host Three" as fullName, "testinghost3@mail.com" as email, "testh345" as password, and "host" as role
      When Set method to POST, set path to register, and click send button
      Then API should return response 201
      And API should return body message "success create account"

    Scenario: API POST REGISTER as USER with INVALID path should success then return 404 Not Found response code
      Given Base URL is _ and input json body "testinghost3" as username, "Testing Host Three" as fullName, "testinghost3@mail.com" as email, "testh345" as password, and "host" as role
      When Set method to POST, set path to registerBADFHABD, and click send button
      Then API should return response 404
      And API should return body message "Not Found"

    Scenario: API POST REGISTER as USER with blank username should success then return 400 Bad Request response code
      Given Base URL is _ and input json body "" as username, "Testing Host Three" as fullName, "testinghost3@mail.com" as email, "testh345" as password, and "host" as role
      When Set method to POST, set path to register, and click send button
      Then API should return response 400
      And API should return body message "Username input value must be greater than 5 character"

    Scenario: API POST REGISTER as USER with blank fullname should success then return 400 Bad Request response code
      Given Base URL is _ and input json body "testinghost3" as username, "" as fullName, "testinghost3@mail.com" as email, "testh345" as password, and "host" as role
      When Set method to POST, set path to register, and click send button
      Then API should return response 400
      And API should return body message "Fullname input value is required"

    Scenario: API POST REGISTER as USER with blank email should success then return 400 Bad Request response code
      Given Base URL is _ and input json body "testinghost3" as username, "Testing Host Three" as fullName, "" as email, "testh345" as password, and "host" as role
      When Set method to POST, set path to register, and click send button
      Then API should return response 400
      And API should return body message "Email input value is required"

    Scenario: API POST REGISTER as USER with blank password should success then return 400 Bad Request response code
      Given Base URL is _ and input json body "testinghost3" as username, "Testing Host Three" as fullName, "testinghost3@mail.com" as email, "" as password, and "host" as role
      When Set method to POST, set path to register, and click send button
      Then API should return response 400
      And API should return body message "Password input value must be greater than 5 character"

    Scenario: API POST REGISTER as USER with blank role should success then return 400 Bad Request response code
      Given Base URL is _ and input json body "testinghost3" as username, "Testing Host Three" as fullName, "testinghost3@mail.com" as email, "testh345" as password, and "" as role
      When Set method to POST, set path to register, and click send button
      Then API should return response 400
      And API should return body message "Role input value must be greater than 4 character"

    Scenario: API POST REGISTER as USER with EXISTED ACCOUNT should success then return 409 Conflict response code
      Given Base URL is _ and input json body "testinghost3" as username, "Testing Host Three" as fullName, "testinghost3@mail.com" as email, "testh345" as password, and "host" as role
      When Set method to POST, set path to register, and click send button
      Then API should return response 409
      And API should return body message "data already used or duplicated"
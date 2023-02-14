@Campyuk
  Feature: Testing POST images as host
    As a host I want to add images for my camp site

    Scenario: API POST ADD NEW IMAGE as HOST with VALID path and body should succeed then return 201 Created response code
      Given Base URL is _ and input json body log in guest
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ , set token to bearer token with camp_id 1 and input json body add images
      When Set method to POST, Set path to images, and click send button
      Then API should return response 201
      Then API should return body message "success add image"

    Scenario: API POST ADD NEW IMAGE as HOST with valid path and body but INVALID TOKEN should failed then return 401 Unauthorized response code
      Given Base URL is _ and input json body log in guest
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ , set token to bearer token with invalid token, camp_id 1, and input json body add images
      When Set method to POST, Set path to images, and click send button
      Then API should return response 401
      Then API should return body message "access is denied due to invalid credential"

    Scenario: API POST ADD NEW IMAGE as HOST with valid path but INVALID ID IN BODY should failed then return 404 Not Found response code
      Given Base URL is _ and input json body log in guest
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ , set token to bearer token with camp_id 1 and input json body add images
      When Set method to POST, Set path to images, and click send button
      Then API should return response 404
      And API should return body message "image input not found"

    Scenario: API POST ADD NEW IMAGE as HOST with valid path but EMPTY ID IN BODY should failed then return 404 Not Found response code
      Given Base URL is _ and input json body log in guest
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ , set token to bearer token with camp_id null and input json body add images
      When Set method to POST, Set path to images, and click send button
      Then API should return response 404
      And API should return body message "image input not found"

    Scenario: API POST ADD NEW IMAGE as HOST with valid path but STRING ID IN BODY should failed then return 400 Bad Request response code
      Given Base URL is _ and input json body log in guest
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ , set token to bearer token with camp_id "cuecdvh" and input json body add images
      When Set method to POST, Set path to images, and click send button
      Then API should return response 404
      And API should return body message "image input not found"

    Scenario: API POST ADD NEW IMAGE as HOST with valid path but EMPTY FILE IN BODY should failed then return 400 Bad Request response code
      Given Base URL is _ and input json body log in guest
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ , set token to bearer token with camp_id 1
      When Set method to POST, Set path to images, and click send button
      Then API should return response 400
      And API should return body message "bad request"


@Campyuk
  Feature: Testing POST images as host
    As a host I want to add images for my camp site

    Scenario: API POST ADD NEW IMAGE as HOST with VALID path and body should succeed then return 201 Created response code
      Given Base URL is _ and input json body log in user
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ , set token to bearer token with camp_id 1 and input json body add images
      When Set method to POST, Set path to images, and click send button
      Then API should return response 201
      Then API should return body message "success add image"

    Scenario: API POST ADD NEW IMAGE as HOST with valid path but INVALID ID IN BODY should failed then return 404 Not Found response code
      Given Base URL is _ and input json body log in user
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ , set token to bearer token with camp_id 1 and input json body add images
      When Set method to POST, Set path to images, and click send button
      Then API should return response 404
      And API should return body message "image input not found"

    Scenario:  API POST ADD NEW IMAGE as HOST with valid path but EMPTY ID IN BODY should failed then return 400 Bad Request response code
      Given Base URL is _ and input json body log in user
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ , set token to bearer token with camp_id null and input json body add images
      When Set method to POST, Set path to images, and click send button
      Then API should return response 404
      And API should return body message "image input not found"


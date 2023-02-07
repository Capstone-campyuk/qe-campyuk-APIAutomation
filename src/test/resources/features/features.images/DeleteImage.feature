@Campyuk
  Feature: Testing DELETE image as host
    As a host I want to delete an image of my camp site

    Scenario: API DELETE IMAGE as HOST with VALID path and parameter should succeed then return 204 No Content response code
      Given Base URL is _ and input json body log in user
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ , set token to bearer token with parameter image_id 1
      When Set method to DELETE, Set path to images, and click send button
      Then API should return response 204
      Then API should return body message "success delete image"

    Scenario: API DELETE ITEMS as HOST with valid path but INVALID PARAMETER should succeed then return 404 Not Found response code
      Given Base URL is _ and input json body log in user
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ , set token to bearer token with parameter image_id "z"
      When Set method to DELETE, Set path to images, and click send button
      Then API should return response 404
      Then API should return body message "image not found"

    Scenario: API DELETE ITEMS as HOST with valid path but WITHOUT PARAMETER should succeed then return 404 Not Found response code
      Given Base URL is _ and input json body log in user
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ , set token to bearer token
      When Set method to DELETE, Set path to images, and click send button
      Then API should return response 404
      Then API should return body message "image not found"

    Scenario: API DELETE ITEMS as HOST with valid path but with INVALID TOKEN should succeed then return 401 Unauthorized response code

      Given Base URL is _ and input json body log in user
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ , set token to bearer token with invalid token and parameter image_id 1
      When Set method to DELETE, Set path to images, and click send button
      Then API should return response 404
      Then API should return body message "image not found"
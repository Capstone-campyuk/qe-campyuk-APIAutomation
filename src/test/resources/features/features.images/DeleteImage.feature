@Campyuk @Alifa
  Feature: Testing DELETE image as host
    As a host I want to delete an image of my camp site

    Scenario: API DELETE IMAGE as HOST with VALID path and parameter should succeed then return 204 No Content response code
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      And Set token to a method in delete an image
      Given Base URL is _ and set 1 as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      Given Base URL is _ and set "2" as jsonPath camp
      When Set method to GET, Set path to detail camp, and click send button
      And Set image id to a method with "0" as jsonPath in delete an image
      Given Base URL is _ , set token to bearer token with parameter image_id
      When Set method to DELETE, Set path to images, and click send button
      Then API should return response 204
      Then API should return body message "success delete image"

    Scenario: API DELETE ITEMS as HOST with valid path but INVALID PARAMETER should succeed then return 404 Not Found response code
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      And Set token to a method in delete an image
      Given Base URL is _ , set token to bearer token with parameter invalid image_id
      When Set method to DELETE, Set path to images, and click send button
      Then API should return response 404
      Then API should return body message "image not found"

    Scenario: API DELETE ITEMS as HOST with valid path but WITH STRING PARAMETER should succeed then return 404 Not Found response code
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      And Set token to a method in delete an image
      Given Base URL is _ , set token to bearer token with parameter string image_id
      When Set method to DELETE, Set path to images, and click send button
      Then API should return response 404
      Then API should return body message "not found"

    Scenario: API DELETE ITEMS as HOST with valid path but WITHOUT PARAMETER should succeed then return 405 Method Not Allowed response code
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      And Set token to a method in delete an image
      Given Base URL is _ , set token to bearer token with parameter empty image_id
      When Set method to DELETE, Set path to images, and click send button
      Then API should return response 405
      Then API should return body message "Method Not Allowed"

    Scenario: API DELETE ITEMS as HOST with valid path but with INVALID TOKEN should succeed then return 401 Unauthorized response code
      Given Base URL is _ and set 1 as parameter page camps
      When Set method to GET, Set path to camps, and click send button
      Given Base URL is _ and set "2" as jsonPath camp
      When Set method to GET, Set path to detail camp, and click send button
      And Set image id to a method with "0" as jsonPath in delete an image
      Given Base URL is _ , set token to bearer token with invalid token and parameter image_id
      When Set method to DELETE, Set path to images, and click send button
      Then API should return response 401
      Then API should return body message "invalid or expired jwt"
@Alifa
  Feature: Testing POST images as host
    As a host I want to add images for my camp site

    Scenario: API POST ADD NEW IMAGE as HOST with VALID path and body should succeed then return 201 Created response code
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      And Set token to a method in add an image
      Given Base URL is _ and set 1 as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      And Set camp_id to a method with "1" as jsonPath in add an image
      Given Base URL is _ , set token to bearer token with camp_id and input json body add images
      When Set method to POST, Set path to images, and click send button
      Then API should return response 201
      Then API should return body message "success add new image"

    Scenario: API POST ADD NEW IMAGE as HOST with INVALID TOKEN should failed then return 401 Unauthorized response code
      Given Base URL is _ and set 1 as parameter page camps
      When Set method to GET, Set path to camps, and click send button
      And Set camp_id to a method with "1" as jsonPath in add an image
      Given Base URL is _ , set token to bearer token with invalid token and with camp_id and input json body add images
      When Set method to POST, Set path to images, and click send button
      Then API should return response 401
      Then API should return body message "invalid or expired jwt"
#
    Scenario: API POST ADD NEW IMAGE as HOST with INVALID ID IN BODY should failed then return 404 Not Found response code
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      And Set token to a method in add an image
      Given Base URL is _ , set token to bearer token with invalid camp_id and input json body add images
      When Set method to POST, Set path to images, and click send button
      Then API should return response 404
      And API should return body message "not found"
#
    Scenario: API POST ADD NEW IMAGE as HOST with valid path but EMPTY ID IN BODY should failed then return 404 Not Found response code
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      And Set token to a method in add an image
      Given Base URL is _ , set token to bearer token with empty camp_id and input json body add images
      When Set method to POST, Set path to images, and click send button
      Then API should return response 404
      And API should return body message "not found"
#
    Scenario: API POST ADD NEW IMAGE as HOST with valid path but STRING ID IN BODY should failed then return 400 Bad Request response code
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      And Set token to a method in add an image
      Given Base URL is _ , set token to bearer token with string camp_id and input json body add images
      When Set method to POST, Set path to images, and click send button
      Then API should return response 404
      And API should return body message "not found"
#
    Scenario: API POST ADD NEW IMAGE as HOST with valid path but EMPTY FILE IN BODY should failed then return 400 Bad Request response code
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      And Set token to a method in add an image
      Given Base URL is _ and set 1 as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      And Set camp_id to a method with "1" as jsonPath in add an image
      Given Base URL is _ , set token to bearer token with camp_id and input json body add images with empty image
      When Set method to POST, Set path to images, and click send button
      Then API should return response 400
      And API should return body message "image input is required"

    Scenario: API POST ADD NEW IMAGE as HOST with valid path but INVALID FILE TYPE IN BODY should failed then return 400 Bad Request response code
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      And Set token to a method in add an image
      Given Base URL is _ and set 1 as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      And Set camp_id to a method with "1" as jsonPath in add an image
      Given Base URL is _ , set token to bearer token with camp_id and input json body add images with invalid image
      When Set method to POST, Set path to images, and click send button
      Then API should return response 400
      And API should return body message "image input is not jpeg or jpg"


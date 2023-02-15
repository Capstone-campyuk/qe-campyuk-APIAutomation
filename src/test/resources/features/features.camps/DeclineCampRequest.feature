@Campyuk
Feature: Testing PUT A CAMP to DECLINED as ADMIN
  As admin I want to decline camp request from host in website

  Scenario: API PUT A CAMP to DECLINED as ADMIN with VALID PATH, PARAMETER, AND TOKEN should return 200 OK
    Given Base URL is _ and input json body log in "admin" as username and "admin" as password
    When Set method to POST, Set path to login, and click send button
    And Set token to a method in decline camp
    Given Base URL is _ and set 2 as parameter page camps as logged in user
    When Set method to GET, Set path to camps, and click send button
    And Set camp_id to a method with "0" as jsonPath in decline camp
    Given Base URL, set token to bearer token, set parameter to camp_id decline
    When Set method to PUT, set path to camps decline, and click send button
    Then API should return response 200
    And API should return body message "success decline camp"

  Scenario: API PUT A CAMP to DECLINED as ADMIN with INVALID PARAMETER should return 404 Not Found
    Given Base URL is _ and input json body log in "admin" as username and "admin" as password
    When Set method to POST, Set path to login, and click send button
    And Set token to a method in decline camp
    Given Base URL, set token to bearer token, set parameter to invalid camp_id decline
    When Set method to PUT, set path to camps decline, and click send button
    Then API should return response 404
    And API should return body message "not found"

  Scenario: API PUT A CAMP to DECLINED as ADMIN with INVALID TOKEN should return 401 Unauthorized
    Given Base URL is _ and set 2 as parameter page camps
    When Set method to GET, Set path to camps, and click send button
    And Set camp_id to a method with "0" as jsonPath in decline camp
    Given Base URL, set token to bearer token with invalid token, set parameter to camp_id decline
    When Set method to PUT, set path to camps decline, and click send button
    Then API should return response 401
    And API should return body message "invalid or expired jwt"

  Scenario: API PUT A CAMP to DECLINED as ADMIN with EMPTY PARAMETER should return 404 Not Found
    Given Base URL is _ and input json body log in "admin" as username and "admin" as password
    When Set method to POST, Set path to login, and click send button
    And Set token to a method in decline camp
    Given Base URL, set token to bearer token, set parameter to empty camp_id decline
    When Set method to PUT, set path to camps decline, and click send button
    Then API should return response 404
    And API should return body message "not found"
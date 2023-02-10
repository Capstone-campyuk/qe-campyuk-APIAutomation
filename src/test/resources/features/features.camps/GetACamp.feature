@Campyuk
  Feature: Testing GET a camp
    As a user I want to get a camp on the website

    Scenario: API GET A CAMP as GUEST with VALID PATH should return response code 200 OK
      Given Base URL is _ and input json body log in "testingmuser1" as username and "test123" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ and set 1 as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      Given Base URL is _ and set id as valid path camp
      When Set method to GET, Set path to detail camp, and click send button
      Then Should return status code 200
      And API should return body id
      And API should return body message "success show detail camp"

@Alifa
  Feature: Testing GET all list camps
    As a user I want to get list all camps on the website

    Scenario Outline: API GET LIST ALL CAMPS as USER with VALID PATH AND PARAMETER should return response code 200 OK
      Given Base URL is _ and set <page> as parameter page camps
      When Set method to GET, Set path to camps, and click send button
      Then API should return response 200
    Examples:
      | page |
      | 1    |
      | 2    |

    Scenario Outline: API GET LIST ALL CAMPS as USER with VALID PATH AND PARAMETER should return response code 200 OK
      Given Base URL is _ and set <page> as parameter page camps
      When Set method to GET, Set path to camps, and click send button
      Then API should return body page <page>
      Examples:
        | page |
        | 1    |
        | 2    |

    Scenario Outline: API GET LIST ALL CAMPS as USER with VALID PATH AND PARAMETER should return response code 200 OK
      Given Base URL is _ and set <page> as parameter page camps
      When Set method to GET, Set path to camps, and click send button
      Then API should return body message "success show list camp"
      Examples:
        | page |
        | 1    |
        | 2    |

    Scenario Outline:  API GET LIST ALL CAMPS as GUEST with VALID PATH AND PARAMETER should return response code 200 OK
      Given Base URL is _ and input json body log in "testingmuser1" as username and "test123" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ and set <page> as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      Then API should return response 200
    Examples:
      | page |
      | 1    |
      | 2    |

    Scenario Outline:  API GET LIST ALL CAMPS as GUEST with VALID PATH AND PARAMETER should return response code 200 OK
      Given Base URL is _ and input json body log in "testingmuser1" as username and "test123" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ and set <page> as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      Then API should return body page <page>
      Examples:
        | page |
        | 1    |
        | 2    |

    Scenario Outline:  API GET LIST ALL CAMPS as GUEST with VALID PATH AND PARAMETER should return response code 200 OK
      Given Base URL is _ and input json body log in "testingmuser1" as username and "test123" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ and set <page> as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      Then API should return body message "success show list camp"
      Examples:
        | page |
        | 1    |
        | 2    |

    Scenario Outline:  API GET LIST ALL CAMPS as HOST with VALID PATH AND PARAMETER should return response code 200 OK
      Given Base URL is _ and input json body log in host
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ and set <page> as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      Then API should return response 200
    Examples:
      | page |
      | 1    |
      | 2    |

    Scenario Outline:  API GET LIST ALL CAMPS as HOST with VALID PATH AND PARAMETER should return response code 200 OK
      Given Base URL is _ and input json body log in host
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ and set <page> as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      Then API should return body page <page>
      Examples:
        | page |
        | 1    |
        | 2    |

    Scenario Outline:  API GET LIST ALL CAMPS as HOST with VALID PATH AND PARAMETER should return response code 200 OK
      Given Base URL is _ and input json body log in host
      When Set method to POST, Set path to login, and click send button
      Given Base URL is _ and set <page> as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      Then API should return body message "success show list camp"
      Examples:
        | page |
        | 1    |
        | 2    |

    Scenario Outline:  API GET LIST ALL CAMPS as USER with INVALID PARAMETER should return response code 404 Not Found
      Given Base URL is _ and set <page> as invalid parameter page camps
      When Set method to GET, Set path to camps, and click send button
      Then API should return response 404
    Examples:
      | page |
      | 30   |
      | 74   |
      | z    |
      | ndje |

    Scenario Outline:  API GET LIST ALL CAMPS as USER with INVALID PARAMETER should return response code 404 Not Found
      Given Base URL is _ and set <page> as invalid parameter page camps
      When Set method to GET, Set path to camps, and click send button
      Then API should return body message "not found"
      Examples:
        | page |
        | 30   |
        | 74   |
        | z    |
        | ndje |

@Campyuk @Alifa
  Feature: Testing PUT UPDATE A CAMP as HOST
    As a host I want update my camp in the website

    Scenario Outline: API PUT UPDATE A CAMP as HOST with VALID PATH, TOKEN, AND BODY should return response code 200 OK
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      And Set token to a method
      Given Base URL is _ and set 1 as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      And Set camp_id to a method with "3" as jsonPath
      Given Base URL, set token to bearer token, set parameter to camp_id, and input form-data body update camp <price> as price, <city> as city, <latitude> as latitude, <longitude> as longitude, <address> as address, <distance> as distance, <title> as title, <description> as description, and document
      When Set method to PUT, Set path to camps, and click send button
      Then API should return response 200
      And API should return body message "success update camp"
    Examples:
      | price | city    | latitude   | longitude   | address                                                                                             | distance | title                    | description                                                                                         |
      | 15000 | "Bogor" | -6.6842187 | 106.7191484 | "Taman Nasional Gunung Halimun Salak, Tamansari, Kec. Tamansari, Kabupaten Bogor, Jawa Barat 16610" | 16       | "Camp Ground Sukamantri" | "Tempat nyaman untuk berkemah di gunung. Terdapat fasilitas MCK, lapangan luas, dan tempat parkir." |

    Scenario Outline: API PUT UPDATE A CAMP as HOST with INVALID PATH should return response code 404 Not Found
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      And Set token to a method
      Given Base URL, set token to bearer token, set parameter to invalid camp_id, and input form-data body update camp <price> as price, <city> as city, <latitude> as latitude, <longitude> as longitude, <address> as address, <distance> as distance, <title> as title, <description> as description, and document
      When Set method to PUT, Set path to camps, and click send button
      Then API should return response 404
      And API should return body message "not found"
    Examples:
      | price | city    | latitude   | longitude   | address                                                                                             | distance | title                    | description                                                                                         |
      | 15000 | "Bogor" | -6.6842187 | 106.7191484 | "Taman Nasional Gunung Halimun Salak, Tamansari, Kec. Tamansari, Kabupaten Bogor, Jawa Barat 16610" | 16       | "Camp Ground Sukamantri" | "Tempat nyaman untuk berkemah di gunung. Terdapat fasilitas MCK, lapangan luas, dan tempat parkir." |

    Scenario Outline: API PUT UPDATE A CAMP as HOST with INVALID TOKEN should return response code 401 Unauthorized
      Given Base URL is _ and set 1 as parameter page camps
      When Set method to GET, Set path to camps, and click send button
      And Set camp_id to a method with "3" as jsonPath
      Given Base URL, set token to bearer token with invalid token, set parameter to camp_id, and input form-data body update camp <price> as price, <city> as city, <latitude> as latitude, <longitude> as longitude, <address> as address, <distance> as distance, <title> as title, <description> as description, and document
      When Set method to PUT, Set path to camps, and click send button
      Then API should return response 401
      And API should return body message "invalid or expired jwt"
      Examples:
        | price | city    | latitude   | longitude   | address                                                                                             | distance | title                    | description                                                                                         |
        | 15000 | "Bogor" | -6.6842187 | 106.7191484 | "Taman Nasional Gunung Halimun Salak, Tamansari, Kec. Tamansari, Kabupaten Bogor, Jawa Barat 16610" | 16       | "Camp Ground Sukamantri" | "Tempat nyaman untuk berkemah di gunung. Terdapat fasilitas MCK, lapangan luas, dan tempat parkir." |

    Scenario Outline: API PUT UPDATE A CAMP as HOST with EMPTY BODY should return response code 200 OK
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      And Set token to a method
      Given Base URL is _ and set 1 as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      And Set camp_id to a method with "3" as jsonPath
      Given Base URL, set token to bearer token, set parameter to camp_id, and input form-data body update camp <price> as price, <city> as city, <latitude> as latitude, <longitude> as longitude, <address> as address, <distance> as distance, <title> as title, <description> as description, and document
      When Set method to PUT, Set path to camps, and click send button
      Then API should return response 200
      And API should return body message "success update camp"
    Examples:
      | price | city    | latitude   | longitude   | address                                                                                             | distance | title                    | description                                                                                         |
      | ""    | "Bogor" | -6.6842187 | 106.7191484 | "Taman Nasional Gunung Halimun Salak, Tamansari, Kec. Tamansari, Kabupaten Bogor, Jawa Barat 16610" | 16       | "Camp Ground Sukamantri" | "Tempat nyaman untuk berkemah di gunung. Terdapat fasilitas MCK, lapangan luas, dan tempat parkir." |
      | 15000 | ""      | -6.6842187 | 106.7191484 | "Taman Nasional Gunung Halimun Salak, Tamansari, Kec. Tamansari, Kabupaten Bogor, Jawa Barat 16610" | 16       | "Camp Ground Sukamantri" | "Tempat nyaman untuk berkemah di gunung. Terdapat fasilitas MCK, lapangan luas, dan tempat parkir." |
      | 15000 | "Bogor" | ""         | 106.7191484 | "Taman Nasional Gunung Halimun Salak, Tamansari, Kec. Tamansari, Kabupaten Bogor, Jawa Barat 16610" | 16       | "Camp Ground Sukamantri" | "Tempat nyaman untuk berkemah di gunung. Terdapat fasilitas MCK, lapangan luas, dan tempat parkir." |
      | 15000 | "Bogor" | -6.6842187 | ""          | "Taman Nasional Gunung Halimun Salak, Tamansari, Kec. Tamansari, Kabupaten Bogor, Jawa Barat 16610" | 16       | "Camp Ground Sukamantri" | "Tempat nyaman untuk berkemah di gunung. Terdapat fasilitas MCK, lapangan luas, dan tempat parkir." |
      | 15000 | "Bogor" | -6.6842187 | 106.7191484 | ""                                                                                                  | 16       | "Camp Ground Sukamantri" | "Tempat nyaman untuk berkemah di gunung. Terdapat fasilitas MCK, lapangan luas, dan tempat parkir." |
      | 15000 | "Bogor" | -6.6842187 | 106.7191484 | "Taman Nasional Gunung Halimun Salak, Tamansari, Kec. Tamansari, Kabupaten Bogor, Jawa Barat 16610" | ""       | "Camp Ground Sukamantri" | "Tempat nyaman untuk berkemah di gunung. Terdapat fasilitas MCK, lapangan luas, dan tempat parkir." |
      | 15000 | "Bogor" | -6.6842187 | 106.7191484 | "Taman Nasional Gunung Halimun Salak, Tamansari, Kec. Tamansari, Kabupaten Bogor, Jawa Barat 16610" | 16       | ""                       | "Tempat nyaman untuk berkemah di gunung. Terdapat fasilitas MCK, lapangan luas, dan tempat parkir." |
      | 15000 | "Bogor" | -6.6842187 | 106.7191484 | "Taman Nasional Gunung Halimun Salak, Tamansari, Kec. Tamansari, Kabupaten Bogor, Jawa Barat 16610" | 16       | "Camp Ground Sukamantri" | ""                                                                                                  |

    Scenario Outline: API PUT UPDATE A CAMP as HOST with EMPTY DOCUMENT should return response code 200 OK
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      And Set token to a method
      Given Base URL is _ and set 1 as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      And Set camp_id to a method with "3" as jsonPath
      Given Base URL, set token to bearer token, set parameter to camp_id, and input form-data body update camp <price> as price, <city> as city, <latitude> as latitude, <longitude> as longitude, <address> as address, <distance> as distance, <title> as title, <description> as description, and empty document
      When Set method to PUT, Set path to camps, and click send button
      Then API should return response 200
      And API should return body message "success update camp"
      Examples:
        | price | city    | latitude   | longitude   | address                                                                                             | distance | title                    | description                                                                                         |
        | 15000 | "Bogor" | -6.6842187 | 106.7191484 | "Taman Nasional Gunung Halimun Salak, Tamansari, Kec. Tamansari, Kabupaten Bogor, Jawa Barat 16610" | 16       | "Camp Ground Sukamantri" | "Tempat nyaman untuk berkemah di gunung. Terdapat fasilitas MCK, lapangan luas, dan tempat parkir." |

    Scenario Outline: API PUT UPDATE A CAMP as HOST with INVALID DATA TYPE IN BODY should return response code 200 OK
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      And Set token to a method
      Given Base URL is _ and set 1 as parameter page camps as logged in user
      When Set method to GET, Set path to camps, and click send button
      And Set camp_id to a method with "3" as jsonPath
      Given Base URL, set token to bearer token, set parameter to camp_id, and input form-data body update camp <price> as price, <city> as city, <latitude> as latitude, <longitude> as longitude, <address> as address, <distance> as distance, <title> as title, <description> as description, and document
      When Set method to PUT, Set path to camps, and click send button
      Then API should return response 400
    Examples:
      | price   | city    | latitude   | longitude   | address                                                                                             | distance | title                    | description                                                                                         |
      | "bogor" | "Bogor" | -6.6842187 | 106.7191484 | "Taman Nasional Gunung Halimun Salak, Tamansari, Kec. Tamansari, Kabupaten Bogor, Jawa Barat 16610" | 16       | "Camp Ground Sukamantri" | "Tempat nyaman untuk berkemah di gunung. Terdapat fasilitas MCK, lapangan luas, dan tempat parkir." |
      | 15000   | 345     | -6.6842187 | 106.7191484 | "Taman Nasional Gunung Halimun Salak, Tamansari, Kec. Tamansari, Kabupaten Bogor, Jawa Barat 16610" | 16       | "Camp Ground Sukamantri" | "Tempat nyaman untuk berkemah di gunung. Terdapat fasilitas MCK, lapangan luas, dan tempat parkir." |
      | 15000   | "Bogor" | "udah"     | 106.7191484 | "Taman Nasional Gunung Halimun Salak, Tamansari, Kec. Tamansari, Kabupaten Bogor, Jawa Barat 16610" | 16       | "Camp Ground Sukamantri" | "Tempat nyaman untuk berkemah di gunung. Terdapat fasilitas MCK, lapangan luas, dan tempat parkir." |
      | 15000   | "Bogor" | -6.6842187 | "baik"      | "Taman Nasional Gunung Halimun Salak, Tamansari, Kec. Tamansari, Kabupaten Bogor, Jawa Barat 16610" | 16       | "Camp Ground Sukamantri" | "Tempat nyaman untuk berkemah di gunung. Terdapat fasilitas MCK, lapangan luas, dan tempat parkir." |
      | 15000   | "Bogor" | -6.6842187 | 106.7191484 | 4.666                                                                                               | 16       | "Camp Ground Sukamantri" | "Tempat nyaman untuk berkemah di gunung. Terdapat fasilitas MCK, lapangan luas, dan tempat parkir." |
      | 15000   | "Bogor" | -6.6842187 | 106.7191484 | "Taman Nasional Gunung Halimun Salak, Tamansari, Kec. Tamansari, Kabupaten Bogor, Jawa Barat 16610" | "hebat"  | "Camp Ground Sukamantri" | "Tempat nyaman untuk berkemah di gunung. Terdapat fasilitas MCK, lapangan luas, dan tempat parkir." |
      | 15000   | "Bogor" | -6.6842187 | 106.7191484 | "Taman Nasional Gunung Halimun Salak, Tamansari, Kec. Tamansari, Kabupaten Bogor, Jawa Barat 16610" | 16       | 890                      | "Tempat nyaman untuk berkemah di gunung. Terdapat fasilitas MCK, lapangan luas, dan tempat parkir." |
      | 15000   | "Bogor" | -6.6842187 | 106.7191484 | "Taman Nasional Gunung Halimun Salak, Tamansari, Kec. Tamansari, Kabupaten Bogor, Jawa Barat 16610" | 16       | "Camp Ground Sukamantri" | 123                                                                                                 |

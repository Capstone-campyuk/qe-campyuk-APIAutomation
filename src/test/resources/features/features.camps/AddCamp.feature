@Campyuk
  Feature: Testing POST add new camp as host
    As a host I want do add a new camp to the website

    Scenario Outline: API POST as HOST ADD NEW CAMP with VALID PATH, TOKEN, AND BODY should return response code 201 Created
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body price <price>, city <city>, latitude <latitude>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, images, and document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 201
    Examples:
      | price | city    | latitude   | longitude    | address                                                                                    | distance | title                  | description                                                                   |
      | 20000 | "Bogor" | 6.52072222 | 106.82477778 | "Jalan Bumi Cimandala Permai, Cimandala, Kec. Sukaraja, Kabupaten Bogor, Jawa Barat 16710" | 10       | "Cimandala Scout Camp" | "Tempat Kemah Pramuka. Lapangan luas dan aman. Tersedia aula dan tempat MCK." |

    Scenario Outline: API POST as HOST ADD NEW CAMP with VALID PATH, TOKEN, AND BODY should return response code 201 Created
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body price <price>, city <city>, latitude <latitude>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, images, and document
      When Set method to POST, Set path to camps, and click send button
      Then API should return body message "success add new camp"
      Examples:
        | price | city    | latitude   | longitude    | address                                                                                    | distance | title                  | description                                                                   |
        | 20000 | "Bogor" | 6.52072222 | 106.82477778 | "Jalan Bumi Cimandala Permai, Cimandala, Kec. Sukaraja, Kabupaten Bogor, Jawa Barat 16710" | 10       | "Cimandala Scout Camp" | "Tempat Kemah Pramuka. Lapangan luas dan aman. Tersedia aula dan tempat MCK." |

    Scenario Outline: API POST as HOST ADD NEW CAMP with EMPTY LATITUDE should return response code 201 Created
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body price <price>, city <city>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, empty latitude, images, and document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 201
      And API should return body message "success add new camp"
    Examples:
      | price | city    | longitude    | address                                                                                    | distance | title                  | description                                                                   |
      | 20000 | "Bogor" | 106.82477778 | "Jalan Bumi Cimandala Permai, Cimandala, Kec. Sukaraja, Kabupaten Bogor, Jawa Barat 16710" | 10       | "Cimandala Scout Camp" | "Tempat Kemah Pramuka. Lapangan luas dan aman. Tersedia aula dan tempat MCK." |

    Scenario Outline: API POST as HOST ADD NEW CAMP with EMPTY LONGITUDE should return response code 201 Created
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body price <price>, city <city>, latitude <latitude>, address <address>, distance <distance>, title <title>, description <description>, empty longitude, images, and document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 201
      And API should return body message "success add new camp"
      Examples:
        | price | city    | latitude   | address                                                                                    | distance | title                  | description                                                                   |
        | 20000 | "Bogor" | 6.52072222 | "Jalan Bumi Cimandala Permai, Cimandala, Kec. Sukaraja, Kabupaten Bogor, Jawa Barat 16710" | 10       | "Cimandala Scout Camp" | "Tempat Kemah Pramuka. Lapangan luas dan aman. Tersedia aula dan tempat MCK." |

    Scenario Outline: API POST as HOST ADD NEW CAMP with EMPTY DISTANCE should return response code 201 Created
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body price <price>, city <city>, latitude <latitude>, longitude <longitude>, address <address>, title <title>, description <description>, empty distance, images, and document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 201
      And API should return body message "success add new camp"
      Examples:
        | price | city    | latitude   | longitude    | address                                                                                      | title                  | description                                                                   |
        | 20000 | "Bogor" | 6.52072222 | 106.82477778 | "Jalan Bumi Cimandala Permai, Cimandala, Kec. Sukaraja, Kabupaten Bogor, Jawa Barat 16710"   | "Cimandala Scout Camp" | "Tempat Kemah Pramuka. Lapangan luas dan aman. Tersedia aula dan tempat MCK." |

    Scenario Outline: API POST as HOST ADD NEW CAMP with EMPTY PRICE should return response code 400 Bad Request
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body empty price, city <city>, latitude <latitude>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, images, and document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 400
    Examples:
      | city    | latitude   | longitude    | address                                                                                    | distance | title                  | description                                                                   |
      | "Bogor" | 6.52072222 | 106.82477778 | "Jalan Bumi Cimandala Permai, Cimandala, Kec. Sukaraja, Kabupaten Bogor, Jawa Barat 16710" | 10       | "Cimandala Scout Camp" | "Tempat Kemah Pramuka. Lapangan luas dan aman. Tersedia aula dan tempat MCK." |

    Scenario Outline: API POST as HOST ADD NEW CAMP with EMPTY IMAGES should return response code 400 Bad Request
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body price <price>, city <city>, latitude <latitude>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, empty images, and document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 400
    Examples:
      | price | city    | latitude   | longitude    | address                                                                                    | distance | title                  | description                                                                   |
      | 20000 | "Bogor" | 6.52072222 | 106.82477778 | "Jalan Bumi Cimandala Permai, Cimandala, Kec. Sukaraja, Kabupaten Bogor, Jawa Barat 16710" | 10       | "Cimandala Scout Camp" | "Tempat Kemah Pramuka. Lapangan luas dan aman. Tersedia aula dan tempat MCK." |

    Scenario Outline: API POST as HOST ADD NEW CAMP with EMPTY DOCUMENT should return response code 400 Bad Request
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body price <price>, city <city>, latitude <latitude>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, images, and empty document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 400
    Examples:
      | price | city    | latitude   | longitude    | address                                                                                    | distance | title                  | description                                                                   |
      | 20000 | "Bogor" | 6.52072222 | 106.82477778 | "Jalan Bumi Cimandala Permai, Cimandala, Kec. Sukaraja, Kabupaten Bogor, Jawa Barat 16710" | 10       | "Cimandala Scout Camp" | "Tempat Kemah Pramuka. Lapangan luas dan aman. Tersedia aula dan tempat MCK." |

    Scenario Outline: API POST as HOST ADD NEW CAMP with EMPTY CITY, ADDRESS, TITLE, OR DESCRIPTION should return response code 400 Bad Request
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body price <price>, city <city>, latitude <latitude>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, images, and document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 400
      Examples:
        | price | city    | latitude   | longitude    | address                                                                                    | distance | title                  | description                                                                   |
        | 20000 | ""      | 6.52072222 | 106.82477778 | "Jalan Bumi Cimandala Permai, Cimandala, Kec. Sukaraja, Kabupaten Bogor, Jawa Barat 16710" | 10       | "Cimandala Scout Camp" | "Tempat Kemah Pramuka. Lapangan luas dan aman. Tersedia aula dan tempat MCK." |
        | 20000 | "Bogor" | 6.52072222 | 106.82477778 | ""                                                                                         | 10       | "Cimandala Scout Camp" | "Tempat Kemah Pramuka. Lapangan luas dan aman. Tersedia aula dan tempat MCK." |
        | 20000 | "Bogor" | 6.52072222 | 106.82477778 | "Jalan Bumi Cimandala Permai, Cimandala, Kec. Sukaraja, Kabupaten Bogor, Jawa Barat 16710" | 10       | ""                     | "Tempat Kemah Pramuka. Lapangan luas dan aman. Tersedia aula dan tempat MCK." |
        | 20000 | "Bogor" | 6.52072222 | 106.82477778 | "Jalan Bumi Cimandala Permai, Cimandala, Kec. Sukaraja, Kabupaten Bogor, Jawa Barat 16710" | 10       | "Cimandala Scout Camp" | ""                                                                            |

    Scenario Outline: API POST as HOST ADD NEW CAMP with INVALID DATA TYPE IN BODY should return response code 400 Bad Request
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body with invalid price <price>, city <city>, latitude <latitude>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, images, and document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 400
    Examples:
      | price      | city       | latitude   | longitude    | address                                                                                    | distance | title                  | description                                                                   |
      | "dua ribu" | "Bogor"    | 6.52072222 | 106.82477778 | "Jalan Bumi Cimandala Permai, Cimandala, Kec. Sukaraja, Kabupaten Bogor, Jawa Barat 16710" | 10       | "Cimandala Scout Camp" | "Tempat Kemah Pramuka. Lapangan luas dan aman. Tersedia aula dan tempat MCK." |
      | 20000      | 2436547865 | 6.52072222 | 106.82477778 | "Jalan Bumi Cimandala Permai, Cimandala, Kec. Sukaraja, Kabupaten Bogor, Jawa Barat 16710" | 10       | "Cimandala Scout Camp" | "Tempat Kemah Pramuka. Lapangan luas dan aman. Tersedia aula dan tempat MCK." |
      | 20000      | "Bogor"    | 456        | 106.82477778 | "Jalan Bumi Cimandala Permai, Cimandala, Kec. Sukaraja, Kabupaten Bogor, Jawa Barat 16710" | 10       | "Cimandala Scout Camp" | "Tempat Kemah Pramuka. Lapangan luas dan aman. Tersedia aula dan tempat MCK." |
      | 20000      | "Bogor"    | 6.52072222 | "2°29'E"     | "Jalan Bumi Cimandala Permai, Cimandala, Kec. Sukaraja, Kabupaten Bogor, Jawa Barat 16710" | 10       | "Cimandala Scout Camp" | "Tempat Kemah Pramuka. Lapangan luas dan aman. Tersedia aula dan tempat MCK." |
      | 20000      | "Bogor"    | 6.52072222 | 106.82477778 | 89473946                                                                                   | 10       | "Cimandala Scout Camp" | "Tempat Kemah Pramuka. Lapangan luas dan aman. Tersedia aula dan tempat MCK." |
      | 20000      | "Bogor"    | 6.52072222 | 106.82477778 | "Jalan Bumi Cimandala Permai, Cimandala, Kec. Sukaraja, Kabupaten Bogor, Jawa Barat 16710" | 7.5      | "Cimandala Scout Camp" | "Tempat Kemah Pramuka. Lapangan luas dan aman. Tersedia aula dan tempat MCK." |
      | 20000      | "Bogor"    | 6.52072222 | 106.82477778 | "Jalan Bumi Cimandala Permai, Cimandala, Kec. Sukaraja, Kabupaten Bogor, Jawa Barat 16710" | 10       | 5648765857             | "Tempat Kemah Pramuka. Lapangan luas dan aman. Tersedia aula dan tempat MCK." |
      | 20000      | "Bogor"    | 6.52072222 | 106.82477778 | "Jalan Bumi Cimandala Permai, Cimandala, Kec. Sukaraja, Kabupaten Bogor, Jawa Barat 16710" | 10       | "Cimandala Scout Camp" | 7777777                                                                       |

    Scenario Outline: API POST as HOST ADD NEW CAMP with INVALID DATA TYPE FOR IMAGE IN BODY should return response code 400 Bad Request
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body with valid price <price>, city <city>, latitude <latitude>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, document, but invalid images
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 400
    Examples:
      | price | city    | latitude   | longitude    | address                                                                                    | distance | title                  | description                                                                   |
      | 20000 | "Bogor" | 6.52072222 | 106.82477778 | "Jalan Bumi Cimandala Permai, Cimandala, Kec. Sukaraja, Kabupaten Bogor, Jawa Barat 16710" | 10       | "Cimandala Scout Camp" | "Tempat Kemah Pramuka. Lapangan luas dan aman. Tersedia aula dan tempat MCK." |

    Scenario Outline: API POST as HOST ADD NEW CAMP with INVALID DATA TYPE FOR DOCUMENT IN BODY should return response code 400 Bad Request
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body with valid price <price>, city <city>, latitude <latitude>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, image, but invalid document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 400
    Examples:
      | price | city    | latitude   | longitude    | address                                                                                    | distance | title                  | description                                                                   |
      | 20000 | "Bogor" | 6.52072222 | 106.82477778 | "Jalan Bumi Cimandala Permai, Cimandala, Kec. Sukaraja, Kabupaten Bogor, Jawa Barat 16710" | 10       | "Cimandala Scout Camp" | "Tempat Kemah Pramuka. Lapangan luas dan aman. Tersedia aula dan tempat MCK." |

    Scenario Outline: API POST as HOST ADD NEW CAMP with INVALID TOKEN should return response code 401 Unauthorized
      Given Base URL, set token to bearer token with invalid token, and input form-data body price <price>, city <city>, latitude <latitude>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, images, and document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 201
      And API should return body message "success add new camp"
    Examples:
      | price | city    | latitude   | longitude    | address                                                                                    | distance | title                  | description                                                                   |
      | 20000 | "Bogor" | 6.52072222 | 106.82477778 | "Jalan Bumi Cimandala Permai, Cimandala, Kec. Sukaraja, Kabupaten Bogor, Jawa Barat 16710" | 10       | "Cimandala Scout Camp" | "Tempat Kemah Pramuka. Lapangan luas dan aman. Tersedia aula dan tempat MCK." |
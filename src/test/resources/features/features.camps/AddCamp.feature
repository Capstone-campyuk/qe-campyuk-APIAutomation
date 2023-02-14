@Campyuk @Alifa
  Feature: Testing POST add new camp as host
    As a host I want do add a new camp to the website

    Scenario Outline: API POST as HOST ADD NEW CAMP with VALID PATH, TOKEN, AND BODY should return response code 201 Created
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body price <price>, city <city>, latitude <latitude>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, images, and document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 201
    Examples:
      | price | city    | latitude   | longitude   | address                                                           | distance | title                       | description                                                                  |
      | 35000 | "Bogor" | -6.6727535 | 106.6880196 | "Gn. Bunder 2, Kec. Pamijahan, Kabupaten Bogor, Jawa Barat 16810" | 27       | "Camp Ground Gunung Bunder" | "Tempat Kemah luas. Tersedia jalur tracking ke curug dan fasilitas outbond." |

    Scenario Outline: API POST as HOST ADD NEW CAMP with VALID PATH, TOKEN, AND BODY should return response code 201 Created
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body price <price>, city <city>, latitude <latitude>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, images, and document
      When Set method to POST, Set path to camps, and click send button
      Then API should return body message "success add new camp"
      Examples:
        | price | city    | latitude   | longitude   | address                                                           | distance | title                       | description                                                                  |
        | 35000 | "Bogor" | -6.6727535 | 106.6880196 | "Gn. Bunder 2, Kec. Pamijahan, Kabupaten Bogor, Jawa Barat 16810" | 27       | "Camp Ground Gunung Bunder" | "Tempat Kemah luas. Tersedia jalur tracking ke curug dan fasilitas outbond." |

    Scenario Outline: API POST as HOST ADD NEW CAMP with EMPTY LATITUDE should return response code 201 Created
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body price <price>, city <city>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, empty latitude, images, and document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 201
      And API should return body message "success add new camp"
      Examples:
        | price | city    | longitude   | address                                                           | distance | title                       | description                                                                  |
        | 35000 | "Bogor" | 106.6880196 | "Gn. Bunder 2, Kec. Pamijahan, Kabupaten Bogor, Jawa Barat 16810" | 27       | "Camp Ground Gunung Bunder" | "Tempat Kemah luas. Tersedia jalur tracking ke curug dan fasilitas outbond." |

    Scenario Outline: API POST as HOST ADD NEW CAMP with EMPTY LONGITUDE should return response code 201 Created
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body price <price>, city <city>, latitude <latitude>, address <address>, distance <distance>, title <title>, description <description>, empty longitude, images, and document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 201
      And API should return body message "success add new camp"
      Examples:
        | price | city    | latitude   | address                                                           | distance | title                       | description                                                                  |
        | 35000 | "Bogor" | -6.6727535 | "Gn. Bunder 2, Kec. Pamijahan, Kabupaten Bogor, Jawa Barat 16810" | 27       | "Camp Ground Gunung Bunder" | "Tempat Kemah luas. Tersedia jalur tracking ke curug dan fasilitas outbond." |

    Scenario Outline: API POST as HOST ADD NEW CAMP with EMPTY DISTANCE should return response code 201 Created
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body price <price>, city <city>, latitude <latitude>, longitude <longitude>, address <address>, title <title>, description <description>, empty distance, images, and document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 201
      And API should return body message "success add new camp"
      Examples:
        | price | city    | latitude   | longitude   | address                                                           | title                       | description                                                                  |
        | 35000 | "Bogor" | -6.6727535 | 106.6880196 | "Gn. Bunder 2, Kec. Pamijahan, Kabupaten Bogor, Jawa Barat 16810" | "Camp Ground Gunung Bunder" | "Tempat Kemah luas. Tersedia jalur tracking ke curug dan fasilitas outbond." |

    Scenario Outline: API POST as HOST ADD NEW CAMP with EMPTY PRICE should return response code 400 Bad Request
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body empty price, city <city>, latitude <latitude>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, images, and document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 400
      Examples:
        | city    | latitude   | longitude   | address                                                           | distance | title                       | description                                                                  |
        | "Bogor" | -6.6727535 | 106.6880196 | "Gn. Bunder 2, Kec. Pamijahan, Kabupaten Bogor, Jawa Barat 16810" | 27       | "Camp Ground Gunung Bunder" | "Tempat Kemah luas. Tersedia jalur tracking ke curug dan fasilitas outbond." |

    Scenario Outline: API POST as HOST ADD NEW CAMP with EMPTY IMAGES should return response code 400 Bad Request
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body price <price>, city <city>, latitude <latitude>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, empty images, and document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 400
      Examples:
        | price | city    | latitude   | longitude   | address                                                           | distance | title                       | description                                                                  |
        | 35000 | "Bogor" | -6.6727535 | 106.6880196 | "Gn. Bunder 2, Kec. Pamijahan, Kabupaten Bogor, Jawa Barat 16810" | 27       | "Camp Ground Gunung Bunder" | "Tempat Kemah luas. Tersedia jalur tracking ke curug dan fasilitas outbond." |

    Scenario Outline: API POST as HOST ADD NEW CAMP with EMPTY DOCUMENT should return response code 400 Bad Request
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body price <price>, city <city>, latitude <latitude>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, images, and empty document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 400
      Examples:
        | price | city    | latitude   | longitude   | address                                                           | distance | title                       | description                                                                  |
        | 35000 | "Bogor" | -6.6727535 | 106.6880196 | "Gn. Bunder 2, Kec. Pamijahan, Kabupaten Bogor, Jawa Barat 16810" | 27       | "Camp Ground Gunung Bunder" | "Tempat Kemah luas. Tersedia jalur tracking ke curug dan fasilitas outbond." |

    Scenario Outline: API POST as HOST ADD NEW CAMP with EMPTY CITY, ADDRESS, TITLE, OR DESCRIPTION should return response code 400 Bad Request
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body price <price>, city <city>, latitude <latitude>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, images, and document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 400
      Examples:
        | price | city    | latitude   | longitude   | address                                                           | distance | title                       | description                                                                  |
        | 35000 | ""      | -6.6727535 | 106.6880196 | "Gn. Bunder 2, Kec. Pamijahan, Kabupaten Bogor, Jawa Barat 16810" | 27       | "Camp Ground Gunung Bunder" | "Tempat Kemah luas. Tersedia jalur tracking ke curug dan fasilitas outbond." |
        | 35000 | "Bogor" | -6.6727535 | 106.6880196 | ""                                                                | 27       | "Camp Ground Gunung Bunder" | "Tempat Kemah luas. Tersedia jalur tracking ke curug dan fasilitas outbond." |
        | 35000 | "Bogor" | -6.6727535 | 106.6880196 | "Gn. Bunder 2, Kec. Pamijahan, Kabupaten Bogor, Jawa Barat 16810" | 27       | ""                          | "Tempat Kemah luas. Tersedia jalur tracking ke curug dan fasilitas outbond." |
        | 35000 | "Bogor" | -6.6727535 | 106.6880196 | "Gn. Bunder 2, Kec. Pamijahan, Kabupaten Bogor, Jawa Barat 16810" | 27       | "Camp Ground Gunung Bunder" | ""                                                                           |

    Scenario Outline: API POST as HOST ADD NEW CAMP with INVALID DATA TYPE IN BODY should return response code 400 Bad Request
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body with invalid price <price>, city <city>, latitude <latitude>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, images, and document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 400
    Examples:
      | price      | city       | latitude   | longitude   | address                                                           | distance | title                       | description                                                                  |
      | "dua ribu" | "Bogor"    | -6.6727535 | 106.6880196 | "Gn. Bunder 2, Kec. Pamijahan, Kabupaten Bogor, Jawa Barat 16810" | 27       | "Camp Ground Gunung Bunder" | "Tempat Kemah luas. Tersedia jalur tracking ke curug dan fasilitas outbond." |
      | 35000      | 2436547865 | -6.6727535 | 106.6880196 | "Gn. Bunder 2, Kec. Pamijahan, Kabupaten Bogor, Jawa Barat 16810" | 27       | "Camp Ground Gunung Bunder" | "Tempat Kemah luas. Tersedia jalur tracking ke curug dan fasilitas outbond." |
      | 35000      | "Bogor"    | 456        | 106.6880196 | "Gn. Bunder 2, Kec. Pamijahan, Kabupaten Bogor, Jawa Barat 16810" | 27       | "Camp Ground Gunung Bunder" | "Tempat Kemah luas. Tersedia jalur tracking ke curug dan fasilitas outbond." |
      | 35000      | "Bogor"    | -6.6727535 | "2°29'E"    | "Gn. Bunder 2, Kec. Pamijahan, Kabupaten Bogor, Jawa Barat 16810" | 27       | "Camp Ground Gunung Bunder" | "Tempat Kemah luas. Tersedia jalur tracking ke curug dan fasilitas outbond." |
      | 35000      | "Bogor"    | -6.6727535 | 106.6880196 | 89473946                                                          | 27       | "Camp Ground Gunung Bunder" | "Tempat Kemah luas. Tersedia jalur tracking ke curug dan fasilitas outbond." |
      | 35000      | "Bogor"    | -6.6727535 | 106.6880196 | "Gn. Bunder 2, Kec. Pamijahan, Kabupaten Bogor, Jawa Barat 16810" | 7.5      | "Camp Ground Gunung Bunder" | "Tempat Kemah luas. Tersedia jalur tracking ke curug dan fasilitas outbond." |
      | 35000      | "Bogor"    | -6.6727535 | 106.6880196 | "Gn. Bunder 2, Kec. Pamijahan, Kabupaten Bogor, Jawa Barat 16810" | 27       | 5648765857                  | "Tempat Kemah luas. Tersedia jalur tracking ke curug dan fasilitas outbond." |
      | 35000      | "Bogor"    | -6.6727535 | 106.6880196 | "Gn. Bunder 2, Kec. Pamijahan, Kabupaten Bogor, Jawa Barat 16810" | 27       | "Camp Ground Gunung Bunder" | 7777777                                                                      |

    Scenario Outline: API POST as HOST ADD NEW CAMP with INVALID DATA TYPE FOR IMAGE IN BODY should return response code 400 Bad Request
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body with valid price <price>, city <city>, latitude <latitude>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, document, but invalid images
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 400
      Examples:
        | price | city    | latitude   | longitude   | address                                                           | distance | title                       | description                                                                  |
        | 35000 | "Bogor" | -6.6727535 | 106.6880196 | "Gn. Bunder 2, Kec. Pamijahan, Kabupaten Bogor, Jawa Barat 16810" | 27       | "Camp Ground Gunung Bunder" | "Tempat Kemah luas. Tersedia jalur tracking ke curug dan fasilitas outbond." |

    Scenario Outline: API POST as HOST ADD NEW CAMP with INVALID DATA TYPE FOR DOCUMENT IN BODY should return response code 400 Bad Request
      Given Base URL is _ and input json body log in "testingmhost2" as username and "testh234" as password
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body with valid price <price>, city <city>, latitude <latitude>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, image, but invalid document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 400
      Examples:
        | price | city    | latitude   | longitude   | address                                                           | distance | title                       | description                                                                  |
        | 35000 | "Bogor" | -6.6727535 | 106.6880196 | "Gn. Bunder 2, Kec. Pamijahan, Kabupaten Bogor, Jawa Barat 16810" | 27       | "Camp Ground Gunung Bunder" | "Tempat Kemah luas. Tersedia jalur tracking ke curug dan fasilitas outbond." |

    Scenario Outline: API POST as HOST ADD NEW CAMP with INVALID TOKEN should return response code 401 Unauthorized
      Given Base URL, set token to bearer token with invalid token, and input form-data body price <price>, city <city>, latitude <latitude>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, images, and document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 401
      And API should return body message "invalid or expired jwt"
      Examples:
        | price | city    | latitude   | longitude   | address                                                           | distance | title                       | description                                                                  |
        | 35000 | "Bogor" | -6.6727535 | 106.6880196 | "Gn. Bunder 2, Kec. Pamijahan, Kabupaten Bogor, Jawa Barat 16810" | 27       | "Camp Ground Gunung Bunder" | "Tempat Kemah luas. Tersedia jalur tracking ke curug dan fasilitas outbond." |
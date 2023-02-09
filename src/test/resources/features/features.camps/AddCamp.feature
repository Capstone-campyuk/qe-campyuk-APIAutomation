@Campyuk
  Feature: Testing POST add new camp as host
    As a host I want do add a new camp to the website

    Scenario Outline: API POST as HOST ADD NEW CAMP with VALID PATH, TOKEN, AND BODY should return response code 201 Created
      Given Base URL is _ and input json body log in host
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body price <price>, city <city>, latitude <latitude>, longitude <longitude>, address <address>, distance <distance>, title <title>, description <description>, images, and document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 201
      Then API should return body message "success add new camp"
    Examples:
      | price | city    | latitude   | longitude    | address                                                                                    | distance | title                  | description                                                                   |
      | 20000 | "Bogor" | 6.52072222 | 106.82477778 | "Jalan Bumi Cimandala Permai, Cimandala, Kec. Sukaraja, Kabupaten Bogor, Jawa Barat 16710" | 10       | "Cimandala Scout Camp" | "Tempat Kemah Pramuka. Lapangan luas dan aman. Tersedia aula dan tempat MCK." |

    Scenario: API POST as HOST ADD NEW CAMP with EMPTY LATITUDE, should return response code 201 Created
      Given Base URL is _ and input json body log in host
      When Set method to POST, Set path to login, and click send button
      Given Base URL, set token to bearer token, and input form-data body price 20000, city "Bogor", latitude null, longitude 106.82477778, address "keren", distance 10, title "bagus", description "wow", images, and document
      When Set method to POST, Set path to camps, and click send button
      Then API should return response 201
      Then API should return body message "success add new camp"

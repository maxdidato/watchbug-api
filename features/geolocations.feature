Feature: Store and serve devices geolocation

  Scenario: Upload a geolocation
    When POST 'geolocations/221?lat=10&long=20&bat=40'
    Then a 201 is received

  Scenario: Retrieve a geolocation
    Given POST 'geolocations/221?lat=10&long=20&bat=40'
    When GET 'geolocations/221'
    Then the following JSON body should be received
    """
    {
      "id":1,
      "watchbug_id":"221",
      "lat":"10",
      "long":"20",
      "created_at": "2015-08-31T10:56:15.047Z",
      "updated_at":  "2015-08-31T10:56:15.047Z",
      "battery": 40

    }
    """

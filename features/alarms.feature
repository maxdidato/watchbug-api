Feature: Notify Watchbug Web that a vehicle has been stolen

  Scenario: Stolen Vehicle
    Given Watchbug Web should receive a POST call '/alarms/100' with params
    """
  {'lat':'10','long':'20'}
  """
    When POST 'alarms/100?lat=10&long=20'
    Then a 201 is received

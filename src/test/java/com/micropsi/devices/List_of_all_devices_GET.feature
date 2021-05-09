Feature: Get List of all Devices available
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'http://localhost:8081'
    * configure headers = { Accept: 'application/json' }
    * def expectedResponse = 
    """
    '[{"name": "bulb1", "ip": "192.168.100.10"}, {"name": "bulb2", "ip": "192.168.100.11"}]'
    """
     

  Scenario: get List of all devices 
    Given path 'devices'
    When method get
    Then status 200
    * match response == expectedResponse
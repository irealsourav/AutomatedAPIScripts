Feature: Scenarios related to Update name of a non connected device
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support
  
    Background:
    * url 'http://localhost:8081/'
    * def connected_device_new_name = "device1"
    * def expected_false_POST_responseData = 
    """
    '{"success": false}'
    """
  
  Scenario: Set Name of a non connected device
  
    Given path 'name'
    And header Content-Type = 'application/json; charset=utf-8'
    And request { name : '#(connected_device_new_name)' }
    When method post
    Then status 200
    And match response == expected_false_POST_responseData
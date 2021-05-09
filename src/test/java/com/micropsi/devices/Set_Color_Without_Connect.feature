Feature: Scenarios related to Update Color of a non connected device
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support
  
    Background:
    * url 'http://localhost:8081/'
    * def connected_device_new_color = "#336699"
    * def expected_false_POST_responseData = 
    """
    '{"success": false}'
    """
  
  Scenario: Set Color of a non connected device
  
    Given path 'color'
    And header Content-Type = 'application/json; charset=utf-8'
    And request { color : '#(connected_device_new_color)' }
    When method post
    Then status 200
    And match response == expected_false_POST_responseData
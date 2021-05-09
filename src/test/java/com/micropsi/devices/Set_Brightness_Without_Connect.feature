Feature: Scenarios related to Update Brightness of a non connected device
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support
  
    Background:
    * url 'http://localhost:8081/'
    * def connected_device_new_brightness = 4
    * def expected_false_POST_responseData = 
    """
    '{"success": false}'
    """
  
  Scenario: Set brightness of a non connected device
  
    Given path 'brightness'
    And header Content-Type = 'application/json; charset=utf-8'
    And request { brightness : '#(connected_device_new_brightness)' }
    When method post
    Then status 200
    And match response == expected_false_POST_responseData
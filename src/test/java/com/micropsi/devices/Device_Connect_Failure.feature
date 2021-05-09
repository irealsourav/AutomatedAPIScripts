Feature: Scenarios related to False Device connection validation
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'http://localhost:8081/'
    * def connected_ip_address = "192.168.100.10"
    * def expected_false_POST_responseData = 
    """
    '{"success": false}'
    """
    * def expected_true_POST_responseData = 
    """
    '{"success": true}'
    """
    
  Scenario: Verify disconnection of a non connected device
    
    Given path 'disconnect'
    And header Content-Type = 'application/json; charset=utf-8'
    When method post
    Then status 200
    And match response == expected_true_POST_responseData
    
    
  Scenario: Verify first time connection of a non connected device
    
    Given path 'connect'
    And header Content-Type = 'application/json; charset=utf-8'
    And request { ip: '#(connected_ip_address)' }
    When method post
    Then status 200
    And match response == expected_true_POST_responseData
    
  Scenario: Verify second time connection of a already connected device
    
    Given path 'connect'
    And header Content-Type = 'application/json; charset=utf-8'
    And request { ip: '#(connected_ip_address)' }
    When method post
    Then status 200
    And match response == expected_false_POST_responseData
    
  Scenario: Verify disconnection of a connected device
    
    Given path 'disconnect'
    And header Content-Type = 'application/json; charset=utf-8'
    When method post
    Then status 200
    And match response == expected_true_POST_responseData
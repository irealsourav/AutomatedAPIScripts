Feature: Scenarios related to Connected devices and its state
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'http://localhost:8081/'
    * def connected_ip_address = "192.168.100.10"
    * def connected_device_new_name = "device1"
    
    * def expected_POST_responseData =
    """
    '{"success": true}'
    """
    * def expected_state_data = 
    """
    '{"name": "bulb1", "ip": "192.168.100.10", "color": "#ffffff", "brightness": 10.0}'
    """



  Scenario: disconnect if any connection remains to a device
    
    Given path 'disconnect'
    And header Content-Type = 'application/json; charset=utf-8'
    When method post
    Then status 200
    And match response == expected_POST_responseData
    
  Scenario: Connect to a device based on the ip address
    
   
    Given path 'connect'
    And header Content-Type = 'application/json; charset=utf-8'
    And request { ip: '#(connected_ip_address)' }
    When method post
    Then status 200
    And match response == expected_POST_responseData
    
  Scenario: Check the state of the connected device
  
    Given path 'state'
    And header Content-Type = 'application/json; charset=utf-8' 
    When method get
    Then status 200
    And match response == expected_state_data
    * match response contains connected_ip_address
    
    
  Scenario: disconnect the connected device
    
    Given path 'disconnect'
    And header Content-Type = 'application/json; charset=utf-8'
    When method post
    Then status 200
    And match response == expected_POST_responseData
    
   
    
    
 

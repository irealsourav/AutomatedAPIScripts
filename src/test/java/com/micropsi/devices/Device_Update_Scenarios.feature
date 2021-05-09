Feature: scenarios related to updation of different features of a connected Device
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'http://localhost:8081/'
    * def connected_ip_address = "192.168.100.10"
    * def connected_device_new_name = "device1"
    * def connected_device_old_name = "bulb1"
    * def connected_device_new_brightness = 4
    * def connected_device_new_color = "#336699"
    * def connected_device_Old_color = "#ffffff"
    
    * def expected_POST_responseData =
    """
    '{"success": true}'
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
    
  Scenario: Set Name of a connected device
  
    Given path 'name'
    And header Content-Type = 'application/json; charset=utf-8'
    And request { name : '#(connected_device_new_name)' }
    When method post
    Then status 200
    And match response == expected_POST_responseData
    
  Scenario: Set old Name to the connected Device
  
    Given path 'name'
    And header Content-Type = 'application/json; charset=utf-8'
    And request { name : '#(connected_device_old_name)' }
    When method post
    Then status 200
    And match response == expected_POST_responseData
  
  
  Scenario: Set Brightness of the connected device
  
    Given path 'brightness'
    And header Content-Type = 'application/json; charset=utf-8'
    And request { brightness : '#(connected_device_new_brightness)' }
    When method post
    Then status 200
    And match response == expected_POST_responseData
    

   
  Scenario: Set Color of the connected device
  
    Given path 'color'
    And header Content-Type = 'application/json; charset=utf-8'
    And request { color : '#(connected_device_new_color)' }
    When method post
    Then status 200
    And match response == expected_POST_responseData


    
  Scenario: Set old Color of the connected device
  
    Given path 'color'
    And header Content-Type = 'application/json; charset=utf-8'
    And request { color : '#(connected_device_Old_color)' }
    When method post
    Then status 200
    And match response == expected_POST_responseData

   
    
  Scenario: disconnect the connected device
    
    Given path 'disconnect'
    And header Content-Type = 'application/json; charset=utf-8'
    When method post
    Then status 200
    And match response == expected_POST_responseData
    
   
    
    
 

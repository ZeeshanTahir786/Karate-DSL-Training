Feature: Get Request On request
  Scenario: Get user details
    Given url "https://reqres.in/api/users/2"
    When method get
    Then status 200
    And print "Response = ", response
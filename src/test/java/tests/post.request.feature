Feature: Post request
  Scenario: Create a user with post request
    Given url "https://reqres.in/api/users"
    And request { "name" : "Hafiz" , "job" : "Automation" }
    When method post
    Then status 201
    And print response
Feature: Post request
  Scenario: Create a user with post request
#    Given url "https://reqres.in/api/users"
#    And request { "name" : "Hafiz" , "job" : "Automation" }
#    When method post
#    Then status 201
#    And print response

#    =====================================================================

#    We can also write this without Gherkin steps using "*".
#    Defining a variable in Karate
#  * def jsonPayload =
#    """
#    {
#    "name" : "Hafiz",
#    "job" : "Automation"
#    }
#    """
#  * url "https://reqres.in/api/users"
#  * request jsonPayload
#  * method post
#  * status 201
#  * print response

#    ==============================================================
#  Payload coming from another feature file
    * def jsonPayload =
    """
    {
    "name" : '#(name)',
    "job" : '#(job)'
    }
    """
    * url "https://reqres.in/api/users"
    * request jsonPayload
    * method post
    * status 201
    * print response
    * match response.name == "Hassan"
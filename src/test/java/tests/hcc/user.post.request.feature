Feature: Post method
  Background:
    * configure ssl = true
  Scenario: create hcc
    * def jsonPayload =
"""
{
   "username" : "rehan2332@nisum.com" , "password" : "nisum123"
}
"""
    * def userRole = [ "EMPLOYEE", "TECH_LEAD" ]
    * url "https://qa-hcc.mynisum.com/api/v1/auth/login"
    * request jsonPayload
    * method post
    * status 200
    * print response
    * match response.objectData.employeeId == 109070
    * match response.objectData.accessToken == "#present"
    * match response.objectData.accessToken == "#string"
    * match response.objectData.userRole == userRole
    * match response.description ==  "#present"
    * match response.objectData contains { expiresIn :30000 }
#    * match foo contains { bar:1, baz: 'hello' }

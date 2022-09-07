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

    * url "https://qa-hcc.mynisum.com/api/v1/auth/login"
    * request jsonPayload
    * method post
    * status 200
    * print response
    * match response.objectData.employeeId == 109070
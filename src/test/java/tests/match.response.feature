Feature: get call
  Background:
  * def userDetails = read("data/userDetails.json")
  Scenario: get user details
    * url "https://reqres.in/api/users/2"
    * method get
    * status 200
    * print response
    * match response == userDetails
Feature: get Employee Status
  Background:
    * def userInfo = call read("user.post.request.feature")
  Scenario: get request
    * def accessToken = userInfo.response.objectData.accessToken
    Given url "https://qa-hcc.mynisum.com/api/v1/general/employeeStatuses"
    And header Authorization = 'Bearer ' + accessToken
    When method get
    Then status 200
    And print response
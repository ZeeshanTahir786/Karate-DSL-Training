Feature: Get request for User info
  Background:
    * def userInfo = call read("user.post.request.feature")
  Scenario: get userInfo
    * def accessToken = userInfo.response.objectData.accessToken
    Given url "https://qa-hcc.mynisum.com/api/v1/auth/userInfo"
    And header Authorization = 'Bearer ' + accessToken
    When method get
    Then status 200
    And print response
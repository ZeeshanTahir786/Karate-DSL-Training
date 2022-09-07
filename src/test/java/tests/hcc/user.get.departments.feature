Feature: fetch user record
  Background:
    * def userInfo = call read('user.post.request.feature')
  Scenario: get request
    * def accessToken = userInfo.response.objectData.accessToken
    * url "https://qa-hcc.mynisum.com/api/v1/general/departments"
    * header Authorization = 'Bearer ' + accessToken
    * method get
    * status 200
    * print response
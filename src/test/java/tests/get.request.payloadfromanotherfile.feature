Feature: Get Request On request
  Background:
    * def userInfo = call read('post.request.feature') { name: "Hassan", job: "QE automation"}
  Scenario: Get user details
   * print userInfo.response
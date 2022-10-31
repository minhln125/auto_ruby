  @CA-6
  Feature: Test login function with multiple device

  @TEST_CA-1
  Scenario: login with chrome
Feature: Test login with chrome
Given on page login
When Enter "minhtrieu@meu-solutions.com" name and "minhln1234"
And press login page
Then Navigate to homepage
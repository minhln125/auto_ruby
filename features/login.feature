@CA-3
Feature: test-excution

	#given a
	#when b
	#then c
  @TEST_CA-2 @BDD_Feature
  Scenario: test-1
Feature: Test login

  Scenario: test login function with valid credential
    Given on page login
    When Enter "minhtrieu@meu-solutions.com" name and "minhln1234"
    And press login page
    Then Navigate to homepage

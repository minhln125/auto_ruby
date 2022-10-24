@CA-3
Feature: test-excution

	@TEST_CA-1 @BDD_Feature
	Scenario: test-1
		Feature: Test login
		    Given on page login
		    When Enter "minhtrieu@meu-solutions.com" name and "minhln1234"
		    And press login page
		    Then Navigate to homepage

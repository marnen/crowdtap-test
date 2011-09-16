Feature: Simple account creation
  As a user
  I should be able to create an account with just my email address (no password required)
  So that I can get started using the system immediately
  
  Scenario Outline:
    Given I am not logged in
    And no users exist
    When I go to the login page
    And I fill in "E-mail address" with "<email>"
    And I press "Log in"
    Then I should be logged in as "<email>"
    
    Examples:
      | email       |
      | joe@aol.com |
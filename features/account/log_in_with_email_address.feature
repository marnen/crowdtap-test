Feature: Log in with e-mail address
  As a user
  I can log in with my e-mail address
  So I can see todos that I've already created
  
  Scenario Outline:
    Given I am logged in as "<email>"
    And I have a todo with title "<title>"
    And I am on the todos page
    When I follow "Log out"
    And I go to the login page
    And I fill in "E-mail address" with "<email>"
    And I press "Log in"
    Then I should be on the todos page
    And I should see "<title>"
    
    Examples:
      | email           | title           |
      | darth@vader.org | Build Deathstar |
Feature: Check off todos
  As a user
  I should be able to check off todos
  So I can keep track of what I've done
  
  Scenario Outline:
    Given I am logged in
    And I have a todo with title "<title>"
    And I am on the todos page
    When I follow "check"
    Then I should be on the todos page
    And I should see "✓ <title>"
    And I should not see "check"
    
    Examples:
      | title           |
      | Something to do |

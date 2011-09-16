Feature: Reorder todos
  As a user
  I should be able to reorder todos
  So I can prioritize my list
  
  Scenario:
    Given I am logged in
    And I have a todo with title "One" and position "1"
    And I have a todo with title "Two" and position "2"
    And I have a todo with title "Three" and position "3"
    And I am on the todos page
    Then I should see the following in order:
      | One   |
      | Two   |
      | Three |
    When I follow "down"
    Then I should be on the todos page
    Then I should see the following in order:
      | Two   |
      | One   |
      | Three |

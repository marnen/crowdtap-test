Feature: Create todo
  As a user
  I should be able to add todos
  So I can manage my todo list
  
  Scenario Outline:
    Given I am logged in
    And I have no todos
    And I am on the todos page
    When I fill in the following:
      | Title       | <title>       |
      | Description | <description> |
      | Due date    | <due_date>    |
    And I press "Save"
    Then I should be on the todos page
    And I should see "<title>"
    And I should see "<description>"
    And I should see "<due_date>"
    
    Examples:
      | title         | description                           | due_date   |
      | Conquer world | This is my plan for world domination. | 2015-01-01 |
      
  Scenario Outline: I can't see others' todos
    Given I am logged in
    And I have a todo with title "<my_todo>"
    And someone else has a todo with title "<other_todo>"
    And I am on the todos page
    Then I should see "<my_todo>"
    And I should not see "<other_todo>"
    
    Examples:
      | my_todo     | other_todo        |
      | Clean house | Destroy Deathstar |
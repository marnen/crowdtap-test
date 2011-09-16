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
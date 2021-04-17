Feature: Go to the Sign up Page

  As a student
  So that I can go to the sign up page

Background: student info in database

  Given the following movies exist:
  | name                    | budget | remaining_budget | fluffy_coin |
  | Allen                 | 1000   | 	800            |       0      | 
  | Tom          | 500    |  400            |       0      | 
  | Winnie    | 200    |  100            |       0      | 


Scenario: Click Sign up to sign up
  Given I am on the home page for the app
  And  I follow "Sign Up" 
  Then I should be on the sign up page
  
Scenario: Click Reset Reward to reset monthly reward to 0
  Given I am on the home page for the app
  And I follow "Sign Up"
  And I fill in "Name" with "Alice"
  And I fill in "Budget" with "100"
  And I fill in "Remaining budget" with "100"
  And I fill in "Password" with "123"
  And I press "Save Changes"
  Then I should see "Alice"
  
Scenario: Click Reset Reward to reset monthly reward to 0
  Given I am on the home page for the app
  And I follow "Sign Up"
  And I follow "Cancel"
  Then I should be on the home page for the app
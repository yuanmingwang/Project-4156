Feature: Get monthly Fluffy Coins Rewards

  As a student
  So that I can get monthly rewards based on my remaining budget

 Background: student info in database

  Given the following movies exist:
      | name                    | budget | remaining_budget | fluffy_coin | password |
      | Allen                | 1000   |  800            |       0      | 0|
      | Tom          | 500    |  400            |       0      | 0 |
      | Winnie    | 200    |  100            |       0      | 0|



Scenario: Click Reward to get monthly reward
  Given I am on the home page for the app
  And  I follow "Login" 
  And I fill in "ID" with "1"
  And  I fill in "Password" with "0"
  And  I press "Login"
  Then I should see "Allen"
  And  I follow "Get Rewards" 
  Then the fluffy coins of "Allen" should be "20.0"

Scenario: Click Reset Reward to reset monthly reward to 0
  Given I am on the home page for the app
  And  I follow "Login" 
  And I fill in "ID" with "1"
  And  I fill in "Password" with "0"
  And  I press "Login"
  Then I should see "Allen"
  And  I follow "Get Rewards" 
  And  I follow "Reset Rewards" 
  Then the fluffy coins of "Allen" should be "0"
Feature: Go to the Login Page

  As a student
  So that I can go to the login page

Background: student info in database

  Given the following movies exist:
      | name                    | budget | remaining_budget | fluffy_coin | password |
      | Allen                | 1000   | 	800            |       0      | 0|
      | Tom          | 500    |  400            |       0      | 0 |
      | Winnie    | 200    |  100            |       0      | 0|


Scenario: Click Login to login
  Given I am on the home page for the app
  And  I follow "Login" 
  Then I should be on the login page

Scenario: Login with correct password
  Given I am on the home page for the app
  And  I follow "Login" 
  And I fill in "ID" with 1
  And  I fill in "Password" with 0
  And  I press "Login"
  Then I should see "Allen"

Scenario: Login with incorrect password
  Given I am on the home page for the app
  And  I follow "Login" 
  And I fill in "ID" with "1"
  And  I fill in "Password" with "111"
  And  I press "Login"
  Then I should be on the home page for the app
  And I should see "authentification failed"
  
Scenario: Login with incorrect ID_1
  Given I am on the home page for the app
  And  I follow "Login" 
  And I fill in "ID" with "999"
  And  I fill in "Password" with "111"
  And  I press "Login"
  Then I should be on the home page for the app
  And I should see "User ID Does not exsit"
  
Scenario: Login with incorrect ID_2
  Given I am on the home page for the app
  And  I follow "Login" 
  And I fill in "ID" with "0"
  And  I fill in "Password" with "111"
  And  I press "Login"
  Then I should be on the home page for the app
  And I should see "User ID can not be smaller than 1"

Scenario: Back to Home Page from Login
  Given I am on the home page for the app
  And  I follow "Login"
  And  I follow "Cancel"
  Then I should be on the home page for the app
  
  

Feature: Go to the Login Page

  As a student
  So that I can go to the login page

Background: student info in database

  Given the following movies exist:
  | name                    | budget | remaining_budget | fluffy_coin |
  | Allen                 | 1000   | 	800            |       0      | 
  | Tom          | 500    |  400            |       0      | 
  | Winnie    | 200    |  100            |       0      | 


Scenario: Click Login to login
  Given I am on the home page for the app
  And  I follow "Login" 
  Then I should be on the login page
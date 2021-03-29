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
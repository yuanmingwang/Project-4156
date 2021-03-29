Feature: Get monthly Fluffy Coins Rewards

  As a student
  So that I can get monthly rewards based on my remaining budget

Background: student info in database

  Given the following movies exist:
  | name                    | budget | remaining_budget | fluffy_coin |
  | Aladdin                 | 1000   | 	800            |       0      | 
  | The Terminator          | 500    |  400            |       0      | 
  | When Harry Met Sally    | 200    |  100            |       0      | 


Scenario: Click Reward to get monthly reward
  Given I am on the home page for the app
  And  I follow "Get Rewards" 
  Then the fluffy coins of "Aladdin" should be "20.0"

Scenario: Click Reset Reward to reset monthly reward to 0
  Given I am on the home page for the app
  And  I follow "Reset Rewards" 
  Then the fluffy coins of "Aladdin" should be "0"

  #When I go to the edit page for "Alien"
  #And  I fill in "Director" with "Ridley Scott"
  #And  I press "Update Movie Info"
  #Then the director of "Alien" should be "Ridley Scott"


Scenario: See the section to Social Media Sharing
  Given I am on the home page for the app
  Then I should see "Like the App? Share with your friends!"
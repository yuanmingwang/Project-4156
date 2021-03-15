Feature: Get monthly Fluffy Coins Rewards

  As a student
  So that I can get recommendation of events based on my monthly budget, location, interests and frequency of entertainment.

Background: events info in database

  Given the following events exist:
  | name                    | location       | interests     | budget   | frequency_of_entertainment |
  | Basketball tournament   | Dodge gym      |  Sports       |   100    |     twice                  |
  | Book club               | Butler Library |  Reading      |   50     |     thrice                 |
  | Speed Friending         | Mudd Building  |  New student  |   10     |     once                   |


Scenario: Click Recommend to get recommended events
  Given I am on the home page for the app
  Then I give the input "Dodge gym", "Sports", "100", "twice" parameters
  And  I follow "Recommend events" 
  Then I should see Events recommended

Scenario: Click Recommend to get recommended events without input
  Given I am on the home page for the app
  Then I don't give the input parameters
  And  I follow "Recommend events" 
  Then I should see Default events

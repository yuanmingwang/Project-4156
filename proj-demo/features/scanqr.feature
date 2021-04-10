Feature: Go to the ScanQR Code Page

  As a student
  So that I can go to the scan the qr code

Background: student info in database

  Given the following movies exist:
  | name                    | budget | remaining_budget | fluffy_coin |
  | Allen                 | 1000   | 	800            |       0      | 
  | Tom          | 500    |  400            |       0      | 
  | Winnie    | 200    |  100            |       0      | 


Scenario: Click ScanQR Code to get QR Code info
  Given I am on the home page for the app
  And  I follow "Scan QR Code" 
  And  I follow "Scan QR Code" 
  Then I should be on the scanqr page 

  
#  Then I should see an HTML redirect to "https://webqr.com/" in the page head

  
  
  
  
#  Then I should be redirected to the external site "https://webqr.com/"


#Then I shoud be on "https://webqr.com/"
#  Then I shoud see "QR Code scanner"


  #When I go to the edit page for "Alien"
  #And  I fill in "Director" with "Ridley Scott"
  #And  I press "Update Movie Info"
  #Then the director of "Alien" should be "Ridley Scott"


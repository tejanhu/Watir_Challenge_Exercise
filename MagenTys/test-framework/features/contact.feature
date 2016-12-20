Feature: Accessing Contact Page 
  Background:
    Given I am on the home page

    @negative
    Scenario: Clicking button without contact details
	  Given I am on the contact page
	  When I click send without <contact_details>
	  Then I should see an error message
	  
    @positive
	  Scenario: Clicking button with contact details
	  Given I am on the contact page
	  And I enter my contact details
	  When I click send with <contact_details>
	  Then I expect my message to be sent
 

      |contact_details           |
			|name                      |          
			|email                     |          
			|telephone                 |
			|subject                   |
			|message                   |
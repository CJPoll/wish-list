Feature: User deletes wish
	As a user
	I want to delete my own wishes
	In order to keep my wishes up to date

	Scenario: User deletes wish
		Given I am logged in
		And I have created a wish
		When I visit the "wish list" page
		And I press the delete wish button
		Then I should be on the "wish list" page
		And the wish should be removed from the system

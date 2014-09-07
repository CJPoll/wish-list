Feature: User creates gift_item / wish
	As a user
	I want to create a new wish / gift_item
	So that I can share gifts I'd like to receive with people

	Scenario: User creates wish
		Given I am logged in
		When I visit the "wish list" page
		And I press "New Wish"
		And I fill out the new wish form
		Then I should be on the "wish list" page
		And there should be a new wish in the system

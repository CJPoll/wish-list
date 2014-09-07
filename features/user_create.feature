Feature: Admin creates user
	As an Admin, 
	I want to create a user
	In order to have administrative control over the system

	Scenario:
		Given I am logged in
		When I visit the "create user" page
		And I fill out the new user form
		Then I should be on the "show user" page
		And there should be a new user in the system


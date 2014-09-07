Feature: Admin edits user login information
	As an admin
	I want to edit a user's login information
	In order to recover hacked accounts

	Scenario: Admin edits user login information
		Given I am logged in
		And I have created a user
		When I visit the "edit user" page
		And I change the user's email to "edited@test.com"
		Then I should be on the "show user" page
		And the user's email should be "edited@test.com"

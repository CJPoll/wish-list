Feature: Admin deletes user
	As an Admin,
	I want to delete a user
	In order to remove banned accounts

	Scenario:
		Given I am logged in
		And I have created a user
		When I visit the "users index" page
		And I press delete user
		Then I should be on the "users index" page
		And the user should be deleted

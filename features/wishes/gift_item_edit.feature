Feature: User edits wish
	As a user
	I want to edit a wish
	So friends can see my current preferences

	Scenario: User edits wish
		Given I am logged in
		And I have created a wish
		When I visit the "edit wish" page
		And I change the wishes name to "My New Favorite Wish"
		Then I should be on the "show wish" page
		And the wish's name should be "My New Favorite Wish"

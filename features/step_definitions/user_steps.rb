When(/^I fill out the new user form$/) do
	expect(current_path).to eq(new_user_path)
	fill_in :user_email, with: 'test@test.com'
	fill_in :user_password, with: 'abc123456'
	click_on 'Save'
end

Then(/^there should be a new user in the system$/) do
	expect(User.all.count).to eq(2)
end

Given(/^I have created a user$/) do
	  pending # express the regexp above with the code you wish you had
end

When(/^I change the user's email to "(.*?)"$/) do |arg1|
	  pending # express the regexp above with the code you wish you had
end

Then(/^the user's email should be "(.*?)"$/) do |arg1|
	  pending # express the regexp above with the code you wish you had
end

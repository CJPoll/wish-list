Given(/^I have created a user$/) do
	@user = FactoryGirl.create(:user)
end

When(/^I fill out the new user form$/) do
	expect(current_path).to eq(new_user_path)
	fill_in :user_email, with: 'test@test.com'
	fill_in :user_password, with: 'abc123456'
	click_on 'Save'
end

When(/^I change the user's email to "(.*?)"$/) do |email|
	fill_in :user_email, with: email
	fill_in :user_password, with: @user.password
	click_on 'Save'
end

When(/^I press delete user$/) do
	click_on "destroy_#{@user.id}"
end

Then(/^there should be a new user in the system$/) do
	expect(User.all.count).to eq(2)
end

Then(/^the user's email should be "(.*?)"$/) do |email|
	expect(User.last.email).to eq(email)
end

Then(/^the user should be deleted$/) do
	expect(User.count).to eq(1)
end

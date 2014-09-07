Given(/^I am logged in$/) do
	user = FactoryGirl.create(:user)
	visit new_user_session_path
	fill_in :user_email, with: user.email
	fill_in :user_password, with: user.password
	click_on 'Log in'
	expect(current_path).to eq(root_path)
end

When(/^I visit the "(.*?)" page$/) do |page|
	if page == 'create user'
		visit new_user_path
	end
end

When(/^I fill out the new user form$/) do
	expect(current_path).to eq(new_user_path)
	fill_in :user_email, with: 'test@test.com'
	fill_in :user_password, with: 'abc123456'
	click_on 'Save'
end

Then(/^I should be on the "(.*?)" page$/) do |page|
	if page == 'show user'
		expect(current_path).to eq(user_path(User.last))
	end
end

Then(/^there should be a new user in the system$/) do
	expect(User.all.count).to eq(2)
end

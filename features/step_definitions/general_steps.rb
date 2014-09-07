Given(/^I am logged in$/) do
	user = FactoryGirl.create(:user)
	visit new_user_session_path
	fill_in :user_email, with: user.email
	fill_in :user_password, with: user.password
	click_on 'Log in'
	expect(current_path).to eq(gift_ideas_path)
end

When(/^I visit the "(.*?)" page$/) do |page|
	if page == 'create user'
		visit new_user_path
	end
end
Then(/^I should be on the "(.*?)" page$/) do |page|
	if page == 'show user'
		expect(current_path).to eq(user_path(User.last))
	end
end

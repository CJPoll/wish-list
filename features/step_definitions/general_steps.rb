Given(/^I am logged in$/) do
	user = FactoryGirl.create(:user)
	visit new_user_session_path
	fill_in :user_email, with: user.email
	fill_in :user_password, with: user.password
	click_on 'Log in'
	expect(current_path).to eq(gift_ideas_path)
end

When(/^I visit the "(.*?)" page$/) do |page|
	path = nil

	if page == 'create user'
		path = new_user_path
	elsif page == 'edit user'
		path = edit_user_path(User.last) 
	elsif page == 'users index'
		path = users_path
	end

	expect(path).to_not be_nil
	visit path
end

Then(/^I should be on the "(.*?)" page$/) do |page|
	path = nil
	if page == 'show user'
		path = user_path(User.last)
	elsif page == 'users index'
		path = users_path
	end

	expect(path).to_not be_nil
end

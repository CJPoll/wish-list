Given(/^I have created a wish$/) do
	@wish = FactoryGirl.create(:gift_idea, user: @user)
end

When(/^I change the wishes name to "(.*?)"$/) do |name|
	fill_in :gift_idea_name, with: name
	click_on 'Save'
end

When(/^I fill out the new wish form$/) do
	gift_idea = FactoryGirl.build(:gift_idea)
	fill_in :gift_idea_name, with: gift_idea.name
	fill_in :gift_idea_description, with: gift_idea.description
	fill_in :gift_idea_url, with: gift_idea.url
	click_on 'Save'
end

When(/^I press the delete wish button$/) do
	click_on "wish_destroy_#{@wish.id}"
end

Then(/^there should be a new wish in the system$/) do
	expect(GiftIdea.count).to eq(1)
end

Then(/^the wish's name should be "(.*?)"$/) do |name|
	@wish.reload
	expect(@wish.name).to eq(name)
end

Then(/^the wish should be removed from the system$/) do
	expect(GiftIdea.where(id: @wish.id)).to_not exist
end

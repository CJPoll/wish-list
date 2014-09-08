Given(/^I have created a wish$/) do
	@wish = FactoryGirl.create(:gift_idea)
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

Then(/^there should be a new wish in the system$/) do
	expect(GiftIdea.count).to eq(1)
end

Then(/^the wish's name should be "(.*?)"$/) do |name|
	@wish.reload
	expect(@wish.name).to eq(name)
end

require 'rails_helper'

RSpec.describe "gift_ideas/index", :type => :view do
	before(:each) do
		assign(:gift_ideas, [
			FactoryGirl.create(:gift_idea),
			FactoryGirl.create(:gift_idea)
		])
	end

	it "renders a list of gift_ideas" do
		render
	end
end

require 'rails_helper'

RSpec.describe "gift_ideas/show", :type => :view do
  before(:each) do
    @gift_idea = assign(:gift_idea, FactoryGirl.create(:gift_idea))
  end

  it "renders without errors" do
    render
  end
end

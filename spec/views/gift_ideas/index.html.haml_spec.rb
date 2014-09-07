require 'rails_helper'

RSpec.describe "gift_ideas/index", :type => :view do
  before(:each) do
    assign(:gift_ideas, [
      GiftIdea.create!(
        :name => "Name",
        :description => "MyText",
        :url => "Url"
      ),
      GiftIdea.create!(
        :name => "Name",
        :description => "MyText",
        :url => "Url"
      )
    ])
  end

  it "renders a list of gift_ideas" do
    render
  end
end

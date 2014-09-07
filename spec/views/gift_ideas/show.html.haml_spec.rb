require 'rails_helper'

RSpec.describe "gift_ideas/show", :type => :view do
  before(:each) do
    @gift_idea = assign(:gift_idea, GiftIdea.create!(
      :name => "Name",
      :description => "MyText",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Url/)
  end
end

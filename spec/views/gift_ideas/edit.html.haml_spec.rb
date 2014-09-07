require 'rails_helper'

RSpec.describe "gift_ideas/edit", :type => :view do
  before(:each) do
    @gift_idea = assign(:gift_idea, FactoryGirl.create(:gift_idea))
  end

  it "renders the edit gift_idea form" do
    render

    assert_select "form[action=?][method=?]", gift_idea_path(@gift_idea), "post" do

      assert_select "input#gift_idea_name[name=?]", "gift_idea[name]"

      assert_select "textarea#gift_idea_description[name=?]", "gift_idea[description]"

      assert_select "input#gift_idea_url[name=?]", "gift_idea[url]"
    end
  end
end

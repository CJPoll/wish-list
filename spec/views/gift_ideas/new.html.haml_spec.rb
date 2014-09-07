require 'rails_helper'

RSpec.describe "gift_ideas/new", :type => :view do
  before(:each) do
    assign(:gift_idea, GiftIdea.new(
      :name => "MyString",
      :description => "MyText",
      :url => "MyString"
    ))
  end

  it "renders new gift_idea form" do
    render

    assert_select "form[action=?][method=?]", gift_ideas_path, "post" do

      assert_select "input#gift_idea_name[name=?]", "gift_idea[name]"

      assert_select "textarea#gift_idea_description[name=?]", "gift_idea[description]"

      assert_select "input#gift_idea_url[name=?]", "gift_idea[url]"
    end
  end
end

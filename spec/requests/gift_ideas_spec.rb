require 'rails_helper'

RSpec.describe "GiftIdeas", :type => :request do
  describe "GET /gift_ideas" do
    it "works! (now write some real specs)" do
      get gift_ideas_path
      expect(response.status).to be(200)
    end
  end
end

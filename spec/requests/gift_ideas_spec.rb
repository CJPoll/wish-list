require 'rails_helper'

RSpec.describe "GiftIdeas", :type => :request do
	describe "GET /gift_ideas" do
		it "redirects" do
			get gift_ideas_path
			expect(response.status).to be(302)
		end
	end
end

require 'rails_helper'

RSpec.describe "GiftIdeas", :type => :request do
	describe "GET /wishes" do
		it "redirects" do
			get wishes_path
			expect(response.status).to be(302)
		end
	end
end

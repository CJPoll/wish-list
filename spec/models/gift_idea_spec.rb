# == Schema Information
#
# Table name: gift_ideas
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  url         :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'rails_helper'

RSpec.describe GiftIdea, :type => :model do
	subject {FactoryGirl.build(:gift_idea)}
	it "has a valid factory" do
		expect(subject).to be_valid
	end
end

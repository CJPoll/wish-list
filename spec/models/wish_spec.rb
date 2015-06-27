# == Schema Information
#
# Table name: wishes
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  url         :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'rails_helper'

RSpec.describe Wish, :type => :model do
	subject {FactoryGirl.build(:wish)}

	it "has a valid factory" do
		expect(subject).to be_valid
	end

	describe '#name' do
		it "is required" do
			subject.name = nil
			expect(subject).to_not be_valid
		end
	end

	describe '#description' do
		it "is required" do
			subject.description = nil
			expect(subject).to_not be_valid
		end
	end

	describe '#url' do
		it "is required" do
			subject.url = nil
			expect(subject).to_not be_valid
		end
	end
end

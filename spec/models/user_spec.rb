require 'rails_helper'

RSpec.describe User, :type => :model do
	subject {FactoryGirl.build(:user)}

	it "has a valid factory" do
		expect(subject).to be_valid
	end

	context "#email" do
		it "is required" do
			subject.email = nil
			expect(subject).to_not be_valid
		end
	end

	context "#password" do
		it "is required" do
			subject.password = nil
			expect(subject).to_not be_valid
		end
	end
end

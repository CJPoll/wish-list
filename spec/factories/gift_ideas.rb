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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :gift_idea do
    name "Darth Vader Gift Mug"
    description "A mug in the shape of Darth Vader"
    url "http://www.amazon.com/Star-Wars-Darth-Vader-Ceramic/dp/B003WLXSCG"
  end
end

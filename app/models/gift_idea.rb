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

class GiftIdea < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true
	validates :url, presence: true
end

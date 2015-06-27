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

class Wish < ActiveRecord::Base
	belongs_to :user

	validates :name, presence: true
	validates :description, presence: true
	validates :url, presence: true

	validates_presence_of :user
end

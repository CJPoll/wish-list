class AddUserToGiftIdeas < ActiveRecord::Migration
  def change
    add_reference :gift_ideas, :user, index: true
  end
end

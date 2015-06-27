class RenameGiftIdeaToWish < ActiveRecord::Migration
  def change
	  rename_table :gift_ideas, :wishes
  end
end

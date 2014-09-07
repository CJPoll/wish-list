class CreateGiftIdeas < ActiveRecord::Migration
  def change
    create_table :gift_ideas do |t|
      t.string :name
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end

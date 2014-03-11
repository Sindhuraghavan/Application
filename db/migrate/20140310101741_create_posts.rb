class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :Item
      t.string :Timing
      t.string :Type
      t.string :Category
      t.integer :Price
      t.string :Description

      t.timestamps
    end
  end
end

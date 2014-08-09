class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :name, limit: 32
      t.string :genre, limit: 8
      t.integer :parent_id, default: 0
      t.integer :lft
      t.integer :rgt
      t.integer :depth

      t.timestamps
    end
  end
end

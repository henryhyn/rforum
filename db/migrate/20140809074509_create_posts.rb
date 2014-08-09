class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, limit: 255, null: false, default: ""
      t.timestamps
    end
  end
end

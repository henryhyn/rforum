class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :forum
      t.references :topic
      t.references :user
      t.string :title, limit: 255, null: false, default: ""
      t.timestamps
    end
  end
end

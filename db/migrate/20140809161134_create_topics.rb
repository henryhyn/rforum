class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.references :forum
      t.references :user
      t.string :subject, limit: 255, default: ""
      t.timestamps
    end
  end
end

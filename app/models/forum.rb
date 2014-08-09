# == Schema Information
#
# Table name: forums
#
#  id         :integer          not null, primary key
#  name       :string(32)
#  genre      :string(8)
#  parent_id  :integer          default(0)
#  lft        :integer
#  rgt        :integer
#  depth      :integer
#  created_at :datetime
#  updated_at :datetime
#

class Forum < ActiveRecord::Base
  acts_as_nested_set
  has_many :posts
  has_many :topics
end

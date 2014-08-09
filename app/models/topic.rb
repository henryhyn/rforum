# == Schema Information
#
# Table name: topics
#
#  id         :integer          not null, primary key
#  forum_id   :integer
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Topic < ActiveRecord::Base
  belongs_to :forum
  belongs_to :user
  has_many :posts
end

# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  forum_id   :integer
#  topic_id   :integer
#  user_id    :integer
#  title      :string(255)      default(""), not null
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
  belongs_to :forum
  belongs_to :topic
  belongs_to :user
end

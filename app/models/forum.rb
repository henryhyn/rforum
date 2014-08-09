# == Schema Information
#
# Table name: forums
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  parent_id  :integer
#  lft        :integer
#  rgt        :integer
#  depth      :integer
#  created_at :datetime
#  updated_at :datetime
#

class Forum < ActiveRecord::Base
end

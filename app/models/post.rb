# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)      default(""), not null
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
end

# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)      default("名無しさん"), not null
#  ip_address :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_users_on_ip_address  (ip_address)
#

class User < ActiveRecord::Base
  has_one :push_notification

  has_many :bulletin_boards
  has_many :bulletin_board_comments
end

# == Schema Information
#
# Table name: bulletin_boards
#
#  id          :integer          not null, primary key
#  user_id     :integer          not null
#  title       :text
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_bulletin_boards_on_user_id  (user_id)
#

class BulletinBoard < ActiveRecord::Base
  belongs_to :user
  has_many :bulletin_board_comments
end

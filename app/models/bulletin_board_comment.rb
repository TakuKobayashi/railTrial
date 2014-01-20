# == Schema Information
#
# Table name: bulletin_board_comments
#
#  id                :integer          not null, primary key
#  user_id           :integer          not null
#  bulletin_board_id :integer          not null
#  comment           :text
#  created_at        :datetime
#  updated_at        :datetime
#
# Indexes
#
#  index_bulletin_board_comments_on_bulletin_board_id  (bulletin_board_id)
#  index_bulletin_board_comments_on_user_id            (user_id)
#

class BulletinBoardComment < ActiveRecord::Base
  belongs_to :user
  belongs_to :bulletin_board
end

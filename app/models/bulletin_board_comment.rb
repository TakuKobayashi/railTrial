# == Schema Information
#
# Table name: bulletin_board_comments
#
#  id                :integer          not null, primary key
#  user_id           :integer          not null
#  bulletin_board_id :integer          not null
#  comment           :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class BulletinBoardComment < ActiveRecord::Base
  belongs_to :user
  belongs_to :bulletin_board
end

# == Schema Information
#
# Table name: bulletin_boards
#
#  id          :integer          not null, primary key
#  user_id     :integer          not null
#  title       :text
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class BulletinBoard < ActiveRecord::Base
  belongs_to :user
  has_many :bulletin_board_comments
end

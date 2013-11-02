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

require 'test_helper'

class BulletinBoardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

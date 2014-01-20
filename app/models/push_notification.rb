# == Schema Information
#
# Table name: push_notifications
#
#  id              :integer          not null, primary key
#  user_id         :integer          not null
#  registration_id :string(255)
#  token_type      :string(255)      not null
#  created_at      :datetime
#  updated_at      :datetime
#
# Indexes
#
#  index_push_notifications_on_user_id  (user_id)
#

class PushNotification < ActiveRecord::Base
  belongs_to :user
end

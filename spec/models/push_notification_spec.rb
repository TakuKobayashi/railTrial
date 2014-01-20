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

require 'spec_helper'

describe PushNotification do
  pending "add some examples to (or delete) #{__FILE__}"
end

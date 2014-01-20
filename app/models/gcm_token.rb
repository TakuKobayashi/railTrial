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

class GCMToken < PushNotification

  def self.send_gcm(data, user_ids = [])
    gcm = GCM.new(Constants::API_KEY)
    responses = []
    push_notifications = GCMToken.select([:user_id, :registration_id]).where("registration_id IS NOT NULL")
    push_notifications = push_notifications.where(user_id: user_ids) if user_ids.present?
    push_notifications.find_in_batches do |notifications|
      registration_ids = notifications.map(&:registration_id)
      responses << gcm.send_notification(registration_ids, {data: data})
    end
    return responses
  end
end

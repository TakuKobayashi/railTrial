class CreatePushNotifications < ActiveRecord::Migration
  def change
    create_table :push_notifications do |t|
      t.integer :user_id,           null: false
      t.string  :registration_id
      t.string  :token_type, null: false
      t.timestamps
    end
    add_index :push_notifications, :user_id
  end
end

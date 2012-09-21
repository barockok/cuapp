class CreateChatChannelSubscribers < ActiveRecord::Migration
  def change
    create_table :chat_channel_subscribers do |t|
      t.integer :user_id
      t.integer :chat_channel_id

      t.timestamps
    end
  end
end

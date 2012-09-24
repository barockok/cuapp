class ChatChannelSubscriber < ActiveRecord::Base
  attr_accessible :chat_channel_id, :user_id
  belongs_to :user
  belongs_to :chat_channel
  validates_associated :user, :chat_channel
end

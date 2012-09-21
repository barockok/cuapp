class Chat < ActiveRecord::Base
  attr_accessible :chat_channel_id, :content, :read, :user_id
  belongs_to :chat_channel
  belongs_to :user
end

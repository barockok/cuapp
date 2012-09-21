class User < ActiveRecord::Base
  attr_accessible :activation_key, :active, :bio, :complete_name, :email, :password, :username
  has_many :chats
  has_many :chat_channel_subscribers
  has_many :chat_channels, :through => :chat_channel_subscribers
end

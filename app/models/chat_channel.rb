class ChatChannel < ActiveRecord::Base
  attr_accessible :active, :initiator_id, :type
  belongs_to :initiator, :class_name => 'User', :foreign_key => 'initiator_id'
  has_many :chat_channel_subscribers
  has_many :users, :through => :chat_channel_subscribers
  validates_associated :initiator
end

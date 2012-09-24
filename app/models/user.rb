class User < ActiveRecord::Base
  attr_accessible :activation_key, :active, :bio, :complete_name, :email, :password, :username, :token_key
  has_many :chats
  has_many :chat_channel_subscribers
  has_many :chat_channels, :through => :chat_channel_subscribers
  has_many :friend_connections
  has_many :friends, :through => :friend_connections
  
  before_create :before_create_cb
  validates_uniqueness_of :username, :email
  validates_presence_of :username, :email, :password, :complete_name
 
  def self.signup param
    new_user = User.new(param)
    raise Exception.new(new_user.errors.to_a.join(',')) if !new_user.valid? 
    new_user.save
    new_user
  end
  def self.signin email, password
    User.where('email = ? and password = ?', email, Digest::SHA1.hexdigest(password)).last
  end
  def password=(string)
     write_attribute(:password , Digest::SHA1.hexdigest(string))
  end
  def before_create_cb
    write_attribute(:activation_key , Digest::SHA1.hexdigest(Time.now.to_s))
    write_attribute(:active , false)
    write_attribute(:token_key, Digest::SHA1.hexdigest((Time.now+4.day).to_s))
    return
  end
  def self.aut email, password
    u = User.find_by_email_and_password(email, Digest::SHA1.hexdigest(password)) 
    raise Exception.new("Wrong Combination") if u == nil
    raise Exception.new("no active yet") if u.active != true
    u
  end
    
end

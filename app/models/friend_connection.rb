class FriendConnection < ActiveRecord::Base
  attr_accessible :confirm, :friend_id, :user_id
  belongs_to :user
  belongs_to :friend, :class_name => 'User', :foreign_key => :friend_id
  after_create :adding_target_as_friend_to_who_requested
  after_destroy :remove_target_friend_where_friend_is_user
  validates_associated :user, :friend
  def adding_target_as_friend_to_who_requested
    FriendConnection.skip_callback(:create, :after, :adding_target_as_friend_to_who_requested)
    rel = FriendConnection.new
    rel.user = friend
    rel.friend = user
    rel.save
    FriendConnection.set_callback(:create, :after, :adding_target_as_friend_to_who_requested)
    return
  end
  def remove_target_friend_where_friend_is_user
    target = friend.friend_connections.find_by_friend_id(user.id)
    target.destroy if target != nil
  end
end

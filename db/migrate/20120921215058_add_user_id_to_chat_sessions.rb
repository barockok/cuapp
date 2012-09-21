class AddUserIdToChatSessions < ActiveRecord::Migration
  def change
    add_column :chat_sessions, :user_id, :integer
  end
end

class DropChatSessions < ActiveRecord::Migration
  def change
    drop_table :chat_sessions
  end
end

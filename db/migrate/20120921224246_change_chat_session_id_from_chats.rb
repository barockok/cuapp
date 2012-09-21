class ChangeChatSessionIdFromChats < ActiveRecord::Migration
 def change
   rename_column :chats, :chat_session_id , :chat_channel_id
 end
end

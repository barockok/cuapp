class RemovePersonAAndPersonBFromChatSessions < ActiveRecord::Migration
  def change
    remove_column :chat_sessions , :person_a
    remove_column :chat_sessions , :person_b
  end
end

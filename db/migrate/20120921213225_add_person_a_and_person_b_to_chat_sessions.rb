class AddPersonAAndPersonBToChatSessions < ActiveRecord::Migration
  def change
    add_column :chat_sessions, :person_a, :integer
    add_column :chat_sessions, :person_b, :integer
  end
end

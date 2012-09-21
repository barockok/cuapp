class CreateChatSessions < ActiveRecord::Migration
  def change
    create_table :chat_sessions do |t|
      t.boolean :active

      t.timestamps
    end
  end
end

class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.text :content
      t.integer :user_id
      t.integer :chat_session_id
      t.boolean :read

      t.timestamps
    end
  end
end

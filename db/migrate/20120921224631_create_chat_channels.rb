class CreateChatChannels < ActiveRecord::Migration
  def change
    create_table :chat_channels do |t|
      t.integer :initiator_id
      t.string :type
      t.boolean :active

      t.timestamps
    end
  end
end

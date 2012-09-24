class CreateFriendConnections < ActiveRecord::Migration
  def change
    create_table :friend_connections do |t|
      t.integer :user_id
      t.integer :friend_id
      t.boolean :confirm , :default => false

      t.timestamps
    end
  end
end

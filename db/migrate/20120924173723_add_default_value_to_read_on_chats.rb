class AddDefaultValueToReadOnChats < ActiveRecord::Migration
  def change
    change_table :chats do |t|
      t.change :read , :boolean, :default => false
    end
  end
end

class AddTokenKeyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :token_key, :string
  end
end

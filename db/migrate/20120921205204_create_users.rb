class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :complete_name
      t.string :email
      t.string :password
      t.string :username
      t.boolean :active
      t.text :bio
      t.string :activation_key

      t.timestamps
    end
  end
end

class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.string :confirm_action
      t.string :refuse_action
      t.text :description
      t.boolean :archive, :default => false

      t.timestamps
    end
  end
end

class RepairDefaultValueOnSomeTable < ActiveRecord::Migration
  def change
      change_table :users do |t|
        t.change :active , :boolean, :default => false
      end
      
  end
end

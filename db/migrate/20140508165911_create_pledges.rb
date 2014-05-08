class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
    	t.integer :amount
    	t.belongs_to :gifts
    	t.belongs_to :projects
    	t.belongs_to :users
      t.timestamps
    end
  end
end

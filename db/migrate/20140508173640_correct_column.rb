class CorrectColumn < ActiveRecord::Migration
  def change
  	remove_column :pledges, :gifts_id
  	remove_column :pledges, :projects_id
  	remove_column :pledges, :users_id

  	add_column :pledges, :gift_id, :integer
  	add_column :pledges, :user_id, :integer
  	add_column :pledges, :project_id, :integer

  end
end

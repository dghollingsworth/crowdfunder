class ChangeTimeDateTime < ActiveRecord::Migration
  def change
  	remove_column :projects, :deadline, :time
  	add_column :projects, :deadline, :datetime
  end
end

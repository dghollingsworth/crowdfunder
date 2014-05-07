class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.integer :amount
      t.string :package
      t.datetime :delivery
      t.belongs_to :project
      t.belongs_to :pledge

      t.timestamps
    end
  end
end

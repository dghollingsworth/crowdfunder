class RemovePlegdeIdFromGifts < ActiveRecord::Migration
  def change
    remove_column :gifts, :pledge_id
  end
end

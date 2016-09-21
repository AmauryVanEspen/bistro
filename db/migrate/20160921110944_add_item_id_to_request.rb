class AddItemIdToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :item_id, :integer
    add_index :requests, :item_id
  end
end

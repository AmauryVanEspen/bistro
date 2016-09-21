class AddUserIdToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :user_id, :interger
    add_index :requests, :user_id
  end
end

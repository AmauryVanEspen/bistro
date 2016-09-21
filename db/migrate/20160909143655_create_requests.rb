class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.float :latitude
      t.float :longitude
      t.string :name
      t.string :address
      t.string :item

      t.timestamps null: false
    end
  end
end

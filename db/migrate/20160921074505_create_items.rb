class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.float :price
      t.integer :quantity

      t.timestamps null: false
    end
  end
end

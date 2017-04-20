class CreateInventories < ActiveRecord::Migration[5.0]
  def change
    create_table :inventories do |t|
      t.string :sku
      t.string :name
      t.string :mfg
      t.string :type
      t.string :model
      t.string :size
      t.string :color
      t.string :category
      t.string :sub_category
      t.integer :qty
      t.integer :location

      t.timestamps
    end
  end
end

class CreateTrucks < ActiveRecord::Migration[5.0]
  def change
    create_table :trucks do |t|
      t.string :name
      t.string :make
      t.string :model
      t.integer :year
      t.text :equipment

      t.timestamps
    end
  end
end

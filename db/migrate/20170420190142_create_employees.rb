class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :full_name
      t.string :fname
      t.string :lname
      t.string :email
      t.string :phone
      t.string :title

      t.timestamps
    end
  end
end

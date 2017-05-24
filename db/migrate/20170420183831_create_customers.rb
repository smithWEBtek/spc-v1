class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :full_name1
      t.string :first_name1
      t.string :last_name1
      t.string :full_name2
      t.string :first_name2
      t.string :last_name2
      t.string :address
			t.float :latitude
			t.float :longitude
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone1
      t.string :phone2
      t.string :email1
      t.string :email2
      t.text :about
      t.text :history

      t.timestamps
    end
  end
end

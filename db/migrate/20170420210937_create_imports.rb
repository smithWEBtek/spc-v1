class CreateImports < ActiveRecord::Migration[5.0]
  def change
    create_table :imports do |t|
      t.string :file_name
			t.string :file_location
      t.string :model
    end
  end
end


class CreateEmployeeServiceCalls < ActiveRecord::Migration[5.0]
  def change
    create_table :employee_service_calls do |t|
      t.integer :employee_id
      t.integer :service_call_id

      t.timestamps
    end
  end
end

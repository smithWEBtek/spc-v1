class CreateTruckServiceCalls < ActiveRecord::Migration[5.0]
  def change
    create_table :truck_service_calls do |t|
      t.integer :truck_id
      t.integer :service_call_id

      t.timestamps
    end
  end
end

class CreateServiceCalls < ActiveRecord::Migration[5.0]
  def change
    create_table :service_calls do |t|
      t.date :scheduled_service_call_date
      t.datetime :start_time_est
      t.datetime :start_time_act
      t.datetime :end_time_est
      t.datetime :end_time_act
      t.integer :customer_id
      t.integer :work_order_id

      t.timestamps
    end
  end
end

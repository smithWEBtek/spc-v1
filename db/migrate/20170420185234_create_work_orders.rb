class CreateWorkOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :work_orders do |t|
      t.date :scheduled_service_call_date
      t.text :customer_complaint
      t.integer :customer_id
      t.integer :pool_id
      t.text :inventory_req
      t.string :work_order_type
      t.integer :duration_est

      t.timestamps
    end
  end
end

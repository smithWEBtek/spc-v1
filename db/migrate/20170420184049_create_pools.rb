class CreatePools < ActiveRecord::Migration[5.0]
  def change
    create_table :pools do |t|
      t.integer :customer_id
      t.boolean :our_pool
      t.date :our_install_date
      t.string :pool_type
      t.string :pool_mfg
      t.string :pool_model
      t.string :pool_finish
      t.string :pool_size
      t.string :filter_type
      t.string :filter_mfg
      t.string :filter_model
      t.string :pump_type
      t.string :pump_mfg
      t.string :pump_model
      t.string :heater_type
      t.string :heater_mfg
      t.string :heater_model
      t.string :winter_cover_type
      t.text :service_history

      t.timestamps
    end
  end
end

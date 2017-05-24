class Truck < ApplicationRecord
  has_many :work_orders
  has_many :truck_service_calls
	has_many :service_calls, through: :truck_service_calls
end

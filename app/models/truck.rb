class Truck < ApplicationRecord
  has_many :work_orders
  has_many :service_calls
end

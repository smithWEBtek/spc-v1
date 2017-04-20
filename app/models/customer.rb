class Customer < ApplicationRecord
  has_many :work_orders
  has_many :service_calls
  has_many :pools
end

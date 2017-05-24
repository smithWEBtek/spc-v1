class ServiceCall < ApplicationRecord
  belongs_to :work_order
  belongs_to :customer
	has_many :employee_service_calls
  has_many :employees, through: :employee_service_calls
  has_many :truck_service_calls
	has_many :trucks, through: :truck_service_calls
end

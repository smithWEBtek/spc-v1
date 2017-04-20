class Employee < ApplicationRecord
  has_many :employee_service_calls
  has_many :service_calls, through: :employee_service_calls
end

class EmployeeServiceCall < ApplicationRecord
  belongs_to :service_call
  belongs_to :employee
end

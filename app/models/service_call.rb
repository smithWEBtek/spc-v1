class ServiceCall < ApplicationRecord
  belongs_to :truck
  belongs_to :work_order
  has_many :employees
end

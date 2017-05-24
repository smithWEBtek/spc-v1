class ServiceCall < ApplicationRecord
  belongs_to :truck
  belongs_to :work_order
  belongs_to :customer
  has_many :employees
end

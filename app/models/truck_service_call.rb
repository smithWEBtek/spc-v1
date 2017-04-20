class TruckServiceCall < ApplicationRecord
  belongs_to :truck
  belongs_to :service_call
end

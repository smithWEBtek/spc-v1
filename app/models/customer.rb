class Customer < ApplicationRecord
  has_many :work_orders
  has_many :service_calls
  has_many :pools

	geocoded_by :full_street_address
	reverse_geocoded_by :latitude, :longitude
	after_validation :reverse_geocode

	def full_street_address
		"#{self.address}, #{self.city}, #{self.zip}"
	end
end

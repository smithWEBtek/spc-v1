170406
SWIMMING POOL CENTER - protoype

Home  Above Ground Pools  Hot Tubs  Services  Gallery  About Us  Request A Quote  Financing  Locations
info@spcpools.com


LOCATION
  location_id
  name, address, city, state, zip, phone
    978-682-6916
    603 S. Union St. Lawrence, MA 01843

  name, address, city, state, zip, phone
    603-329-4001
    138 Route 111, Hampstead, NH 03841

 
MODEL

TRUCK
  truck_id
  has_many :products
  has_many :work_orders
  belongs_to :employee

TRUCK_INVENTORY
  driver cannot add a product that is not already on the truck_inventory
  driver checks inventory daily
  some parts are not inventoried individually: eg screws, fasteners, brackets bought in bulk



LOCATION_INVENTORY

WORKORDER
  work_order_id
  timestamp
  origin_location
  scheduled_service_call_date
  form_service_call
  form_estimate
  form_pool_opening
  form_pool_closing

CUSTOMER
  customer_id
  name1
  fname1
  lname1

  name2
  fname2
  lname2

  address
  city
  state
  zip

  phone
  cell
  work

POOL
  pool_id
  our_pool?
    our_install_date
  pool_type
  pool_finish
  pool_mfg
  pool_model
  pool_pump_mfg
  pool_pump_model
  pool_heater_mfg
  pool_winter_cover_type
  pool_other
















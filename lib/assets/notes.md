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

Truck :id, :
  has_many :products
  has_many :work_orders
  belongs_to :employee

TRUCK_INVENTORY
  driver cannot add a product that is not already on the truck_inventory
  driver checks inventory daily
  some parts are not inventoried individually: eg screws, fasteners, brackets bought in bulk



LOCATION_INVENTORY

Customer
  contact info
  directions

  :customer_id
  :name1
  :fname1
  :lname1

  :name2
  :fname2
  :lname2

  :address
  :city
  :state
  :zip

  :phone
  :cell
  :work

Pool
  model, serial, filter, pump, install_date
  installation_history
    who?, did what?, when?, result?
  service_history
    who?, did what?, when?, result?
  columns
    :id
    :our_pool?
    :our_install_date
    :pool_type
    :pool_finish
    :pool_mfg
    :pool_model
    :pool_pump_mfg
    :pool_pump_model
    :pool_heater_mfg
    :pool_winter_cover_type
    :pool_other

WorkOrder
  verb: estimate, pool_opening, pool_closing, pool_cleaning_service, service_call, call_back 
  nouns: customer_id, pool_id, inventory_id(s) 
  columns:
    :work_order_business_location_origin
    :scheduled_service_call_date
    :customer_id


  work_order_id
  timestamp
  origin_location
  scheduled_service_call_date

  form_service_call
  form_pool_opening
  form_pool_closing
  form_call_back
  form_pool_cleaning_service
  form_estimate


Truck
  truck_type, capacity, constraints, driver
  truck_inventory
    inv_assigned 
      to: customer_id
    inv_spare
      should still be available on truck

Inventory
  location: Lawrence, Hampstead 
  loaded_on: truck_id
  date_loaded:
  date_used/sold:
  status: for_sale, sold, damaged, missing, free-to-customer

Employee
  contact_info, schedule_id, feedback
  history
    drove which truck, which day
  *role
    driver
    helper
    crew foreman

Schedule
  employee_id
  truck_id
  customer_id
  inventory_id

Time
  month
  week
  day
  hour
  half
  quarter




#############################################################
Questions:
  Trucks:
    Do trucks return to business location daily?
    Is each truck driven by 1 driver or multiple drivers?
  
  How, when are trucks loaded for work:
    Completely cleaned out at end of day?
    Some parts remain on truck, some added each day?
    How is inventory on truck tracked?
      example: common parts, bulk screws, tools stay on truck
               parts for today's work, loaded before 

  Employee
    Roles: does an employee serve in multiple roles?
      -always a driver
      -always a helper, until promoted to driver
      -sometimes a crew foreman on an install










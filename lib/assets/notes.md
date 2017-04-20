170406
SWIMMING POOL CENTER - protoype

Home  Above Ground Pools  Hot Tubs  Services  Gallery  About Us  Request A Quote  Financing  Locations
info@spcpools.com

ModelName:
relationships:
columns:
notes:
--------------------------------------------------------


--------------------------------------------------------
Location
  name, address, city, state, zip, phone

  603 S. Union St.  Lawrence,   MA 01843  978-682-6916
  138 Route 111,    Hampstead,  NH 03841  603-329-4001
--------------------------------------------------------   
Inventory
  sku, name, qty, category, sub-category, location_id 
  ex: sku: "123", "filter", "6", "filters", "medium-sized", "3"

  Inventory
  location: Lawrence, Hampstead 
  loaded_on: truck_id
  date_loaded:
  date_used/sold:
  status: for_sale, sold, damaged, missing, free-to-customer

-------------------------------------------------------- 
Truck 
  id, name, make, model, year, equipment (crane, moffit, winch, welder, etc.)
  truck_type, capacity, constraints, driver
  
  has_many :work_orders
  has_many :service_calls
  

    TRUCK_INVENTORY
      usage:
        --sticker label 
        --bar code
        --camera picture

      truck_inventory
        inv_assigned 
          to: customer_id
        inv_spare
          should still be available on truck
 
--------------------------------------------------------

Customer
  contact fields, directions
  full_name1, first_name1, last_name1, 
  full_name2, first_name2, last_name2, 
  address, city, state, zip, primary_phone, other_phone

--------------------------------------------------------
Pool
  our_pool,
    our_install_date,
  pool_type,
  pool_finish,
  pool_mfg,
  pool_model,
  pool_size,

  filter_type,
  filter_mfg,
  filter_model,

  pump_type,
  pump_mfg,
  pump_model,

  heater_type,
  heater_mfg,
  heater_model,
  
  winter_cover_type,

  notes,
    installation_history
      who?, did what?, when?, result?
    service_history
      who?, did what?, when?, result?
 
--------------------------------------------------------
WorkOrder
  customer_id, pool_id, inventory_required, inventory_used, customer_complaint, scheduled_service_call_date

  wo_type: estimate, pool_opening, pool_closing, pool_cleaning_service, service_call, call_back 
  wo_duration_est
  wo_duration_act

  wo_type          wo_duration_est  wo_duration_act
  service_call     .5               1.5 (driver track, or app checkin 'updated_at')
  pool_opening     2.0
  pool_closing     2.0
  call_back        1.0
  pool_cleaning    3.0
  estimate         1


Forms:
  form_service_call
  form_pool_opening
  form_pool_closing
  form_call_back
  form_pool_cleaning_service
  form_estimate
 
--------------------------------------------------------
Employee
  full_name, fname, lname, email, phone, title
  has_many :schedules

  history
    feedback
    drove which truck, which day
  *role
    driver
    helper
    crew foreman

--------------------------------------------------------
TruckSchedule
  employee_id, truck_id, customer_id, inventory_list
  
  has_many :work_orders
  has_many :appointments
 
def schedule_truck(truck_id)
  truck = Truck.find(truck_id)
  truck.capacity

  schedule.work_orders.each do |wo|
  wo.duration_est.inject(0) { |sum, x| sum + x }


  truck loaded with 8-10 hours of total "wo_duration_est"
  end of each service call, driver records total "wo_duration_act"

  NO BLAME - NO SHAME (encourage honest reporting)
--------------------------------------------------------

ApptSchedule
  

relationships:
columns:
notes:
--------------------------------------------------------

ServiceCall
  sched_date, start_est, start_act, end_est, end_act, work_order_id, truck_id

  belongs_to :truck
  belongs_to :work_order

  has_many :service_call_employees
  has_many :employees, through: :service_call_employees


Schedule
  various views of ServiceCalls and related view/details
  an index view: /services
  all_trucks
    7 trucks left to right, with days across top
    each day has 8 work_order slots, roughly matching 8 work hours
    if a work_order slot is scheduled, it appears visually in the grid, if not, show red "unscheduled"

  single_truck with details 
    work_orders
      wo_id: 1
        inventory_list
        duration
        employees
        customer_id

      wo_id: 2
        inventory_list


              mon       tue       wed       thu       fri       sat       sun
  truck1
    wo_id1    8:00am    8:00am    8:00am    8:00am    8:00am    8:00am
    wo_id2    9:00am    9:00am    9:00am    9:00am    9:00am    9:00am
    wo_id3    10:00am   10:00am   10:00am   10:00am   10:00am   10:00am
   
  truck2
    wo_id4    8:00am    8:00am    8:00am    8:00am    8:00am    8:00am
    wo_id5    9:00am    9:00am    9:00am    9:00am    9:00am    9:00am
    wo_id6    10:00am   10:00am   10:00am   10:00am   10:00am   10:00am

  truck3
    wo_id7    8:00am    8:00am    8:00am    8:00am    8:00am    8:00am
    wo_id8    9:00am    9:00am    9:00am    9:00am    9:00am    9:00am
    wo_id9    10:00am   10:00am   10:00am   10:00am   10:00am   10:00am

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










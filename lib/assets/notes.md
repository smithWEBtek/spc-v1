170406
SWIMMING POOL CENTER - protoype

Home  Above Ground Pools  Hot Tubs  Services  Gallery  About Us  Request A Quote  Financing  Locations
info@spcpools.com
RBCK Enterprises, Inc.
 
--------------------------------------------------------   
Inventory
  sku, name, mfg, type, model, size, color, category, sub-category, qty, location

  status: 4sale, sold, damaged, missing, freebie-loss
  location: default: 'Lawrence'

Locations  (pundit, enumerated list, in the Inventory table)
  603 S. Union St.  Lawrence,   MA 01843  978-682-6916
  138 Route 111,    Hampstead,  NH 03841  603-329-4001
  truck_id: 1
  truck_id: 2
  truck_id: 3
  truck_id: 4
  truck_id: 5
  truck_id: 6
  truck_id: 7

  Lawrence, Hampstead, truck1, truck2, etc..7
  a = Lawrence
  b = Hampstead
  1-7 = truck

-------------------------------------------------------- 
Truck 
  name, make, model, year, equipment (crane, moffit, winch, welder, etc.)

  has_many :work_orders
  has_many :service_calls
  

    TRUCK_INVENTORY
      usage:
        --sticker label 
        --bar code
        --camera picture
          (phone app should wizard through taking and capturing a picture in database)

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
  address, city, state, zip, phone1, phone2, email1, email2
  contact_about
  contact_history
  
  has_many :work_orders
  has_many :service_calls

--------------------------------------------------------
Pool
  our_pool(boolean),
    our_install_date,
  pool_type,
  pool_mfg,
  pool_model,
  pool_finish,
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

  service_history
    who?, did what?, when?, result?
 
  belongs_to :customer


--------------------------------------------------------
WorkOrder
service_call_date customer_complaint customer_id:integer pool_id:integer inventory_req work_order_type duration_est:integer
  

  work_order_type: estimate, pool_opening, pool_closing, pool_cleaning_service, service_call, call_back 
  work_order_duration_est:integer (estimated time required, note, actual is tracked via ServiceCall)

  work_order_type          work_order_duration_est    work_order_duration_act
  service_call            .5                          1.5 (driver track, or app checkin 'updated_at')
  pool_opening            2.0
  pool_closing            2.0
  call_back               1.0
  pool_cleaning           3.0
  estimate                1

WorkOrder(views):
  form_service_call
  form_pool_opening
  form_pool_closing
  form_call_back
  form_pool_cleaning_service
  form_estimate
 
  belongs_to :customer

--------------------------------------------------------
TruckServiceCall
 truck_id, service_call_id
  
 belongs_to :truck
 belongs_to :service_call
 
def schedule_truck(truck_id)
  truck = Truck.find(truck_id)
  truck.capacity

  schedule.work_orders.each do |wo|
  wo.duration_est.inject(0) { |sum, x| sum + x }


  truck loaded with 8-10 hours of total "wo_duration_est"
  end of each service call, driver records total "wo_duration_act"

  NO BLAME - NO SHAME (encourage honest reporting)

--------------------------------------------------------
Employee
  full_name, fname, lname, email, phone, title

  has_many :employee_service_calls
  has_many :service_calls, through: :employee_service_calls

  history
    feedback
    drove which truck, which day
    *role:(driver, helper, crew foreman)

--------------------------------------------------------
EmployeeServiceCall
  service_call_id
  employee_id

  belongs_to :service_call
  belongs_to :employee

--------------------------------------------------------
ServiceCall
  scheduled_service_call_date, 
  start_time_est, 
  start_time_act, 
  end_time_est, 
  end_time_act,
  customer_id,
  work_order_id, 
  truck_id

  belongs_to :truck
  belongs_to :work_order
  has_many :employees

--------------------------------------------------------
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

--------------------------------------------------------
 

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










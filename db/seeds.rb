DATA_customers ={
 :customer_keys =>
    ["name"],
  :customers => [
  [
  "full_name1", 
  "first_name1", 
  "last_name1", 
  "full_name2", 
  "first_name2", 
  "last_name2", 
  "address", 
  "city", 
  "state", 
  "zip", 
  "phone1", 
  "phone2", 
  "email1", 
  "email2", 
  "about", 
  "history"]
  ]
}

def make_customers
  DATA_customers[:customers].each do |customer|
    new_customer = Customer.new
    customer.each_with_index do |attribute, i|
      new_customer.send(DATA_customers[:customer_keys][i]+"=", attribute)
    end
    new_customer.save
  end
end

def main
  make_customers
  make_employee_service_calls
  make_employees
  make_inventories
  make_pools
  make_service_calls
  make_truck_service_calls
  make_trucks
  make_work_orders
end

main
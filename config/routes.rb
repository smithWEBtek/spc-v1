Rails.application.routes.draw do
  root 'static#home'
  resources :service_calls, :employee_service_calls, :employees, :truck_service_calls, :work_orders, :pools, :customers, :trucks, :inventories

 end

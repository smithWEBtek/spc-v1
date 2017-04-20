Rails.application.routes.draw do
  root 'static#home'
  get '/import', to: 'static#new_import'

  resources :service_calls, :employee_service_calls, :employees, :truck_service_calls, :work_orders, :pools, :customers, :trucks, :inventories

 end

Rails.application.routes.draw do
  resources :service_histories
  root 'static#home'
  get '/import', to: 'static#new_import'
	get '/get_map', to: 'static#get_map'
  resources :service_calls, :employee_service_calls, :employees, :truck_service_calls, :work_orders, :pools, :customers, :trucks, :inventories

 end

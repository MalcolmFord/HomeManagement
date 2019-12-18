Rails.application.routes.draw do
  root'housing_units#index'
  resources :employees
  resources :tenants
  resources :housing_units
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

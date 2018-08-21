Rails.application.routes.draw do
  #add route for my fancy page
  get "/pages/:page" => "pages#show"
  resources :wanted_people
  resources :stolen_vehicles
  resources :recovered_vehicles
  resources :securities
  resources :vehicle_boat_parts
  resources :missing_people
  resources :license_plates
  resources :stolen_guns
  resources :recovered_guns
  resources :boats
  resources :articles
  #make my fancy page show up as index
  root "pages#show", page: "index"
end

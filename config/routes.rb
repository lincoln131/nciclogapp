Rails.application.routes.draw do
  get "/pages/:page" => "pages#show"
  get "/articles/:admin" => "admin#show"
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root "pages#show", page: "about"
end
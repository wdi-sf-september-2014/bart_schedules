BartSchedules::Application.routes.draw do
  # this route will match get requests to /stations/new and route them to
  # StationsController#new and define a path helper new_station_path
  # see: http://guides.rubyonrails.org/routing.html#the-purpose-of-the-rails-router
  get 'stations/new', to: 'stations#new', as: 'new_station'

  # this route will match post requests to /stations and route them to
  # StationsController#create and define a path helper stations_path
  post 'stations', to: 'stations#create', as: 'stations'

  # this route will match post requests to /stations/:id and route them to
  # StationsController#show, passing the id and define a path helper station_path
  get 'stations/:id', to: 'stations#show', as: 'station'
  # You can have the root of your site routed with "root"
  root 'home#index'
end

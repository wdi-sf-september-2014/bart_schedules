BartSchedules::Application.routes.draw do
  get "stations/new"
  # this route will match /stations/new and route that request to
  # StationsController#new and define a path helper new_station_path
  # see: http://guides.rubyonrails.org/routing.html#the-purpose-of-the-rails-router
  get 'stations/new', to: 'stations#new', as: 'new_station'
  # You can have the root of your site routed with "root"
  root 'home#index'
end

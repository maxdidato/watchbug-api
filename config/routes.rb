Rails.application.routes.draw do
    post '/geolocations/:id', to: 'geolocations#create', as:'geolocations_create'
end

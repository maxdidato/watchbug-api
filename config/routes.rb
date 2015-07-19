Rails.application.routes.draw do
    post '/geolocations/:id', to: 'geolocations#create', as:'geolocations_create'
    get '/geolocations/:id', to: 'geolocations#show', as:'geolocations_show'
end

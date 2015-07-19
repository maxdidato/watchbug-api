class GeolocationsController < ApplicationController
  def create
    Geolocation.create!(watchbug_id:params[:id],lat:params[:lat],long:params[:long],alt: params[:alt])
  end
end

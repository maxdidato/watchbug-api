class GeolocationsController < ApplicationController
  def create
    Geolocation.create!(watchbug_id:params[:id],lat:params[:lat],long:params[:long],alt: params[:alt])
  end

  def show
    @geolocation = Geolocation.find_by(watchbug_id:params[:id])
    render json: @geolocation
  end
end

class GeolocationsController < ApplicationController
  def create
    location = Geolocation.find_or_create_by!(watchbug_id:params[:id])
    location.update!(lat:params[:lat],long:params[:long],battery:params[:bat])
    head :created
  end

  def show
    @geolocation = Geolocation.where(watchbug_id:params[:id]).last
    render json: @geolocation
  end
end

class AlarmsController < ApplicationController
  def create
    client=Faraday.new(Rails.configuration.watchbug_web) do |conn|
      conn.request :url_encoded
      conn.adapter Faraday.default_adapter
    end
    client.post("/alarms/#{params['id']}",{lat:params['lat'],long:params[:long]})
    head :created
  end

end

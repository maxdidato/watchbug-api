require 'rails_helper'

RSpec.describe AlarmsController, type: :controller do

  context '#create' do

    context 'when an alarm is submitted' do

      it 'performs a call to watchbug-web' do
        params = {id: 100, lat: '10', long: '20'}
        request = stub_request(:post, Rails.configuration.watchbug_web+"/alarms/#{params[:id]}").with(body: {lat:'10',long:'20'})
        post :create, params
        expect(request).to have_been_requested
      end
    end

  end
end

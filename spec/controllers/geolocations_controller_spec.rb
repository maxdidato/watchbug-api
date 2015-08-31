require 'rails_helper'

RSpec.describe GeolocationsController, type: :controller do

  context '#create' do

    context 'when a geolocation is submitted for the first time for a device' do

      it 'creates the entry in the database' do
        assert_difference('Geolocation.count') do
          post :create, {id: 100, lat: '10', long: '20', bat: '40'}
        end
      end
    end

    context 'when the geolocation for the device already exists' do

      it 'updates the existing entry' do
        post :create, {id: 100, lat: '10', long: '20', bat: '40'}
        assert_no_difference('Geolocation.count') do
          post :create, {id: 100, lat: '10', long: '20', bat: '40'}
        end
      end
    end
  end

  context '#show' do
    it 'show the json representation of a given device geolocation' do
      Geolocation.create(watchbug_id:1,lat:'10',long:'20',battery:'30')
      get :show,{id:1}
      assert_equal(Geolocation.first.to_json,@response.body)
    end

  end

end

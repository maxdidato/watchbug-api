class RemoveAltFromGeolocations < ActiveRecord::Migration
  def change
    remove_columns :geolocations,:alt
  end
end

class AddBatToGeolocations < ActiveRecord::Migration
  def change
    change_table :geolocations do |t|
      t.integer :battery
    end

  end
end

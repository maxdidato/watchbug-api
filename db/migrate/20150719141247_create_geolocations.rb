class CreateGeolocations < ActiveRecord::Migration
  def change
    create_table :geolocations do |t|
      t.string :watchbug_id
      t.string :lat
      t.string :long
      t.string :alt

      t.timestamps null: false
    end
  end
end

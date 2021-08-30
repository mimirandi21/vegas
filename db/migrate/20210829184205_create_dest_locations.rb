class CreateDestLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :dest_locations do |t|
      t.bigint :destination_id
      t.bigint :location_id

      t.timestamps
    end
  end
end

class CreateTransLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :trans_locations do |t|
      t.bigint :transportation_id
      t.bigint :location_id

      t.timestamps
    end
  end
end

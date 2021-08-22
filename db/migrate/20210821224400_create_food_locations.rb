class CreateFoodLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :food_locations do |t|
      t.bigint :food_id
      t.bigint :location_id

      t.timestamps
    end
  end
end

class CreateDestSpecials < ActiveRecord::Migration[6.1]
  def change
    create_table :dest_specials do |t|
      t.bigint :destination_id
      t.bigint :special_id

      t.timestamps
    end
  end
end

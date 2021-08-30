class CreateDestLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :dest_likes do |t|
      t.bigint :destination_id
      t.bigint :like_id

      t.timestamps
    end
  end
end

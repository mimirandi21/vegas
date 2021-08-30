class CreateDestRecommendations < ActiveRecord::Migration[6.1]
  def change
    create_table :dest_recommendations do |t|
      t.bigint :destination_id
      t.bigint :recommendation_id

      t.timestamps
    end
  end
end

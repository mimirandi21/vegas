class CreateFoodRecommendations < ActiveRecord::Migration[6.1]
  def change
    create_table :food_recommendations do |t|
      t.bigint :food_id
      t.bigint :recommendation_id

      t.timestamps
    end
  end
end

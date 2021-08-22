class CreateFoodSpecials < ActiveRecord::Migration[6.1]
  def change
    create_table :food_specials do |t|
      t.bigint :food_id
      t.bigint :special_id

      t.timestamps
    end
  end
end

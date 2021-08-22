class CreateFoodLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :food_likes do |t|
      t.bigint :food_id
      t.bigint :like_id

      t.timestamps
    end
  end
end

class CreateFoodCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :food_categories do |t|
      t.bigint :food_id
      t.bigint :category_id

      t.timestamps
    end
  end
end

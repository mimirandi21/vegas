class CreateDestCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :dest_categories do |t|
      t.bigint :destination_id
      t.bigint :category_id

      t.timestamps
    end
  end
end

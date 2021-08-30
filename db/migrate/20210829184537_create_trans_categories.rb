class CreateTransCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :trans_categories do |t|
      t.bigint :transportation_id
      t.bigint :category_id

      t.timestamps
    end
  end
end

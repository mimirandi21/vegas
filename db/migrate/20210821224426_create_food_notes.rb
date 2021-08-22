class CreateFoodNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :food_notes do |t|
      t.bigint :food_id
      t.bigint :note_id

      t.timestamps
    end
  end
end

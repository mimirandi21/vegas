class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :hours
      t.string :website

      t.timestamps
    end
  end
end

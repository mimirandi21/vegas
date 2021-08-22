class CreateSpecials < ActiveRecord::Migration[6.1]
  def change
    create_table :specials do |t|
      t.string :info

      t.timestamps
    end
  end
end

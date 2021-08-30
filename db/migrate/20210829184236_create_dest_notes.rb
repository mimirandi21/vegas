class CreateDestNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :dest_notes do |t|
      t.bigint :destination_id
      t.bigint :note_id

      t.timestamps
    end
  end
end

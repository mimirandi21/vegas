class CreateTransNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :trans_notes do |t|
      t.bigint :transportation_id
      t.bigint :note_id

      t.timestamps
    end
  end
end

class CreateTransLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :trans_likes do |t|
      t.bigint :transportation_id
      t.bigint :like_id

      t.timestamps
    end
  end
end

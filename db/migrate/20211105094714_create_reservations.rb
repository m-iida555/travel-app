class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.integer :start
      t.integer :end
      t.integer :persons
      t.integer :room_id
      t.integer :user_id

      t.timestamps
    end
  end
end

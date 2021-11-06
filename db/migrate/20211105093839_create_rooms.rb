class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.text :roompic
      t.string :roominfo
      t.integer :money
      t.string :area
      t.string :keyword
      t.string :roomname
      t.integer :user_id

      t.timestamps
    end
  end
end

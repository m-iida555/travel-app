class AddForeignkeysToColumn < ActiveRecord::Migration[6.0]
  def change
      add_column :users, :user_id, :integer
      add_column :rooms, :room_id, :integer
      add_column :reservations, :reservation_id, :integer
  end
end

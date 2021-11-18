class AddRoominfoToReservations < ActiveRecord::Migration[6.0]
  def change
      add_column :reservations, :roominfo, :string
      add_column :reservations, :roompic, :text
  end
end
